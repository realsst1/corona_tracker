import 'dart:convert';

import 'package:coronatracker/models/global_stats_model.dart';

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
  List totalCases=[];

  Future<void> _getGlobalStats() async {
    var client = http.Client();
    var url = "https://api.covid19api.com/summary";
    var resp = await client.get(url);
    var val = jsonDecode(resp.body);
    GlobalStatsModel model = GlobalStatsModel.fromJson(val);
    print(model.global.totalConfirmed);
    setState(() {
      _statsModel = model;
      totalCases.add(model.global.totalConfirmed);
    });
  }

  static var data = [
    DataPoint("Confirmed", _statsModel.global.totalConfirmed, Colors.blueGrey),
    DataPoint("Recovered", _statsModel.global.totalRecovered, Colors.green),
    DataPoint("Deaths", _statsModel.global.totalDeaths, Colors.green),
  ];

  var series = [

  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getGlobalStats();
  }

  Widget _globalTable() {
    if (_statsModel != null) {
      List<DataColumn> cols = [
        DataColumn(
            label: Text(
              "Country",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: Colors.black),
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
            numeric: true),
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

      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: cols,
          rows: rows,
          columnSpacing: 1,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text(
          "Global Stats".toUpperCase(),
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w900,
              color: Colors.black,
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
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
            Container(
              color: Colors.white,
              child:Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),

              ) ,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.topLeft,
              child: Text(
                "Country wise stats",
                style: GoogleFonts.poppins(
                    fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: _globalTable(),
            )
          ],
        ),
      ),
    );
  }
}

class DataPoint {
  String countryName;
  int totalCases;
  charts.Color color;

  DataPoint(this.countryName, this.totalCases, Color color);

}
