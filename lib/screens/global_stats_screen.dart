import 'dart:convert';

import 'package:coronatracker/models/data_point.dart';
import 'package:coronatracker/models/global_stats_model.dart';
import 'package:coronatracker/widgets/datapoint_chart.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:pie_chart/pie_chart.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class GlobalStatsScreen extends StatefulWidget {
  @override
  _GlobalStatsScreenState createState() => _GlobalStatsScreenState();
}

class _GlobalStatsScreenState extends State<GlobalStatsScreen> {
  static GlobalStatsModel _statsModel;
  List totalCases = [];
  List<DataPoint> _dataPoints = [];

  Future<void> _getGlobalStats() async {
    var client = http.Client();
    var url = "https://api.covid19api.com/summary";
    var resp = await client.get(url);
    var val = jsonDecode(resp.body);
    GlobalStatsModel model = GlobalStatsModel.fromJson(val);
    setState(() {
      _statsModel = model;
      totalCases.add(model.global.totalConfirmed);
    });
  }

  var series = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getGlobalStats();
  }

  Widget _globalTable(bool isDark) {
    if (_statsModel != null) {
      List<DataColumn> cols = [
        DataColumn(
            label: Text(
              "Country",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: isDark?Colors.white: Colors.black),
            ),
            numeric: false),
        DataColumn(
            label: Text(
              "Confirmed",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: Colors.blueGrey),
            ),
            numeric: true,
            onSort: (index,asc){
              if(asc){
                setState(() {
                  _statsModel.countries.sort((a,b)=>b.totalConfirmed.compareTo(a.totalConfirmed));
                });
              }
              else if(!asc){
                setState(() {
                  _statsModel.countries.reversed.toList();
                });
              }
            }
        ),
        DataColumn(
            label: Text(
              "Recovered",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: Colors.green),
            ),
            numeric: true),
        DataColumn(
            label: Text(
              "Deaths",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: Colors.red),
            ),
            numeric: true)
      ];

      List<DataRow> rows = [];

      for (var country in _statsModel.countries) {
        rows.add(DataRow(
          cells: [
            DataCell(Container(
              width: 90,
              height: 90,
              alignment: Alignment.centerLeft,
              child: Text(
                country.country,
                maxLines: 2,
                style: GoogleFonts.poppins(),
              ),
            )),
            DataCell(Text(country.totalConfirmed.toString(),
                style: GoogleFonts.poppins())),
            DataCell(Text(country.totalRecovered.toString(),
                style: GoogleFonts.poppins())),
            DataCell(Text(country.totalDeaths.toString(),
                style: GoogleFonts.poppins())),
          ],
        ));
        setState(() {
          totalCases.add(country.totalConfirmed);
        });
      }
      setState(() {
        totalCases.sort();
      });

      int c = 0;

      setState(() {
        for (var point in _statsModel.countries) {
          _dataPoints.add(DataPoint(point.country, point.totalConfirmed,
              charts.ColorUtil.fromDartColor(Colors.blue)));
        }
        _dataPoints.sort((a, b) => b.totalCases.compareTo(a.totalCases));
        _dataPoints = _dataPoints.sublist(1, 5);
      });

      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: cols,
          sortColumnIndex: 1,
          sortAscending: false,
          rows: rows,
          columnSpacing: 1,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    var brightness=MediaQuery.of(context).platformBrightness;
    bool isDark=brightness==Brightness.dark;

    return Scaffold(
      backgroundColor: isDark?Colors.black87:Colors.white,
      appBar: AppBar(
        backgroundColor: isDark?Colors.black87:Colors.white,
        leading: BackButton(
          color: isDark?Colors.white:Colors.black87,
        ),
        title: Text(
          "Global Stats".toUpperCase(),
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w900,
              color: isDark?Colors.white:Colors.black87,
              letterSpacing: 2),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _statsModel == null
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  )
                : Container(
                    padding: EdgeInsets.all(8.0),
                    color: isDark?Colors.black87:Colors.white,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: PieChart(
                          dataMap: {
                            "Total Confirmed":
                                _statsModel.global.totalConfirmed.toDouble(),
                            "Total Recovered":
                                _statsModel.global.totalRecovered.toDouble(),
                            "Total Deaths":
                                _statsModel.global.totalDeaths.toDouble()
                          },
                          chartType: ChartType.disc,
                          animationDuration: Duration(milliseconds: 800),
                          colorList: [
                            Colors.blue,
                            Colors.green,
                            Colors.redAccent
                          ],
                          showChartValues: true,
                        ),
                      ),
                    ),
                  ),
            Container(
              color: isDark?Colors.black87:Colors.white,
              padding: EdgeInsets.all(8.0),
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: _dataPoints.length == 0
                    ? CircularProgressIndicator()
                    : SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: MediaQuery.of(context).size.height / 2,
                                width: MediaQuery.of(context).size.width,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DataPointChart(_dataPoints),
                                )),
                          ),
                        ),
                      ),
              ),
            ),
            Container(
              color:isDark?Colors.black87:Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.topLeft,
              child: Text(
                "Country wise stats",
                style: GoogleFonts.poppins(
                    fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              color: isDark?Colors.black87:Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: _globalTable(isDark),
            )
          ],
        ),
      ),
    );
  }
}
