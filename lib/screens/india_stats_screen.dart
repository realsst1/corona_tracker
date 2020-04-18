import 'dart:convert';

import 'package:coronatracker/models/state_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class IndiaStatsScreen extends StatefulWidget {
  @override
  _IndiaStatsScreenState createState() => _IndiaStatsScreenState();
}

class _IndiaStatsScreenState extends State<IndiaStatsScreen> {

  List<DataRow> _rowList=[];
  bool _isLoading=true;

  Future<void> _getIndiaStateWiseList()async{
    _isLoading=true;
    var client=http.Client();
    var url="https://akashraj.tech/corona/api_india";
    var resp=await http.get(url);
    var val=jsonDecode(resp.body);
    StateWiseCorona corona=StateWiseCorona.fromJson(val);
    var states=corona.stateWise;
    List<DataRow> stateList=[];
    stateList.add(DataRow(
      cells: [
        DataCell(Text(states.andamanAndNicobarIslands.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
        DataCell(Text(states.andamanAndNicobarIslands.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
        DataCell(Text(states.andamanAndNicobarIslands.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
        DataCell(Text(states.andamanAndNicobarIslands.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
      ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.andhraPradesh.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.andhraPradesh.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.andhraPradesh.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.andhraPradesh.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.arunachalPradesh.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.arunachalPradesh.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.arunachalPradesh.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.arunachalPradesh.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.assam.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.assam.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.assam.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.assam.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.bihar.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.bihar.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.bihar.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.bihar.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.chandigarh.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.chandigarh.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.chandigarh.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.chandigarh.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.chhattisgarh.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.chhattisgarh.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.chhattisgarh.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.chhattisgarh.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.dadraAndNagarHaveli.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.dadraAndNagarHaveli.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.dadraAndNagarHaveli.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.dadraAndNagarHaveli.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.damanAndDiu.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.damanAndDiu.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.damanAndDiu.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.damanAndDiu.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.delhi.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.delhi.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.delhi.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.delhi.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.goa.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.goa.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.goa.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.goa.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.gujarat.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.gujarat.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.gujarat.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.gujarat.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.haryana.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.haryana.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.haryana.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.haryana.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.himachalPradesh.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.himachalPradesh.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.himachalPradesh.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.himachalPradesh.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.jammuAndKashmir.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.jammuAndKashmir.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.jammuAndKashmir.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.jammuAndKashmir.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.jharkhand.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.jharkhand.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.jharkhand.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.jharkhand.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.karnataka.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.karnataka.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.karnataka.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.karnataka.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.kerala.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.kerala.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.kerala.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.kerala.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.ladakh.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.ladakh.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.ladakh.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.ladakh.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.lakshadweep.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.lakshadweep.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.lakshadweep.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.lakshadweep.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.madhyaPradesh.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.madhyaPradesh.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.madhyaPradesh.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.madhyaPradesh.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.maharashtra.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0),)),
          DataCell(Text(states.maharashtra.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.maharashtra.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.maharashtra.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.manipur.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.manipur.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.manipur.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.manipur.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.meghalaya.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.meghalaya.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.meghalaya.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.meghalaya.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.mizoram.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.mizoram.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.mizoram.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.mizoram.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.nagaland.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.nagaland.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.nagaland.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.nagaland.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.odisha.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.odisha.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.odisha.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.odisha.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.puducherry.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.puducherry.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.puducherry.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.puducherry.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.punjab.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.punjab.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.punjab.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.punjab.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.rajasthan.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.rajasthan.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.rajasthan.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.rajasthan.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.sikkim.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.sikkim.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.sikkim.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.sikkim.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.tamilNadu.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.tamilNadu.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.tamilNadu.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.tamilNadu.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.telangana.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.telangana.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.telangana.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.telangana.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.tripura.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.tripura.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.tripura.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.tripura.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.uttarakhand.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.uttarakhand.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.uttarakhand.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.uttarakhand.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.uttarPradesh.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0))),
          DataCell(Text(states.uttarPradesh.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.uttarPradesh.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.uttarPradesh.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    stateList.add(DataRow(
        cells: [
          DataCell(Text(states.westBengal.state,style: GoogleFonts.poppins(fontWeight: FontWeight.w900,fontSize: 16.0),)),
          DataCell(Text(states.westBengal.confirmed,style: GoogleFonts.poppins(fontSize: 16.0),)),
          DataCell(Text(states.westBengal.recovered,style: GoogleFonts.poppins(fontSize: 16.0))),
          DataCell(Text(states.westBengal.deaths,style: GoogleFonts.poppins(fontSize: 16.0)))
        ]
    ));
    setState(() {
      _rowList=stateList;
      _isLoading=false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getIndiaStateWiseList();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading?Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: CircularProgressIndicator()),
    ):SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        sortColumnIndex: 1,
        columnSpacing:1,
        columns: [
          DataColumn(
              label: Text(
                "State",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18.0),
              ),
              numeric: false,
          ),
          DataColumn(
              label: Text(
                "Confirmed",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.blueGrey,
                    fontSize: 16.0),
              ),
              numeric: true),
          DataColumn(
              label: Text(
                "Recovered",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.green,
                    fontSize: 16.0),
              ),
              numeric: true),
          DataColumn(
              label: Text(
                "Deaths",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                    fontSize: 16.0),
              ),
              numeric: true)
        ],
        rows:_rowList ,
      ),
    );
  }
}
