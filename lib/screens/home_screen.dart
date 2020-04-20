import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:coronatracker/models/corona_by_country.dart';
import 'package:coronatracker/screens/faq_screen.dart';
import 'package:coronatracker/screens/global_stats_screen.dart';
import 'package:coronatracker/screens/hygiene_screen.dart';
import 'package:coronatracker/screens/india_stats_screen.dart';
import 'package:coronatracker/screens/myths_page.dart';
import 'package:coronatracker/screens/self_test_screen.dart';
import 'package:coronatracker/screens/stats_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
  String _today = DateFormat("dd-MM-yyyy HH:mm:ss").format(DateTime.now());

  CoronaByCountry _indiaStats;

  Future<CoronaByCountry> _getLiveIndiaStats() async {
    var client = http.Client();
    var url = "https://api.covid19api.com/live/country/india";
    var resp = await client.get(url);
    Iterable i = jsonDecode(resp.body);
    List<CoronaByCountry> list =
        i.map((c) => CoronaByCountry.fromJson(c)).toList();
    setState(() {
      _indiaStats = list[list.length - 1];
      //_today=DateFormat("dd-MM-yyyy HH:mm:ss").format(DateTime.now());
    });
    return list[list.length - 1];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getLiveIndiaStats();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 3.5;
    final width = MediaQuery.of(context).size.width / 3.5;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CORONA TRACKER",
          style: GoogleFonts.poppins(
              fontSize: 24.0,
              fontWeight: FontWeight.w900,
              color: Colors.black87,
              letterSpacing: 2),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      floatingActionButton: SpeedDial(
        marginRight: 18,
        marginBottom: 20,
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 20),
        visible: true,
        closeManually: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        elevation: 8.0,
        tooltip: 'Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
            child: Icon(Icons.email),
            label: "Email Helpline",
            onTap: ()async{
              if(await canLaunch("mailto:ncov2019@gov.in?subject=COVID-19 Help&body=''")){
                await launch("mailto:ncov2019@gov.in?subject=COVID-19 Help&body=''");
              }
              else{
                throw 'Could not launch';
              }
            }
          ),
          SpeedDialChild(
              child: Icon(Icons.phone),
              label: "Call Helpline",
              onTap: ()async{
                if(await canLaunch("tel:1075")){
                  await launch("tel:1075");
                }
                else{
                  throw 'Could not call';
                }
              }
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselSlider(
                  autoPlay: true,
                  autoPlayInterval: Duration(milliseconds: 3000),
                  autoPlayAnimationDuration: Duration(milliseconds: 500),
                  initialPage: 0,
                  autoPlayCurve: Curves.easeInExpo,
                  enlargeCenterPage: true,
                  height: 140.0,
                  items: <Widget>[
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        elevation: 15.0,
                        color: Colors.red,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/images/stay-home.png",
                                    fit: BoxFit.cover,
                                    height: 120.0,
                                    width: 80.0,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        "COVID-19",
                                        style: GoogleFonts.poppins(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                            letterSpacing: 2),
                                        textAlign: TextAlign.end,
                                      ),
                                      Text(
                                        "caused by coronavirus",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                        textAlign: TextAlign.end,
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "#StayHome#StaySafe",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14.0,
                                            color: Colors.white),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ))),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        elevation: 15.0,
                        color: Colors.blueAccent,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/images/alcohol.png",
                                    fit: BoxFit.cover,
                                    height: 120.0,
                                    width: 80.0,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        "COVID-19",
                                        style: GoogleFonts.poppins(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                            letterSpacing: 2),
                                        textAlign: TextAlign.end,
                                      ),
                                      Text(
                                        "caused by coronavirus",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                        textAlign: TextAlign.end,
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "Wash your hands \nevery 20 minutes",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14.0,
                                              color: Colors.white),
                                          textAlign: TextAlign.start,
                                          softWrap: true,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ))),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        elevation: 15.0,
                        color: Colors.deepOrange,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/images/fever.png",
                                    fit: BoxFit.cover,
                                    height: 120.0,
                                    width: 80.0,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        "COVID-19",
                                        style: GoogleFonts.poppins(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                            letterSpacing: 2),
                                        textAlign: TextAlign.end,
                                      ),
                                      Text(
                                        "caused by coronavirus",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                        textAlign: TextAlign.end,
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "Have fever ?\nConsult your doctor",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14.0,
                                              color: Colors.white),
                                          textAlign: TextAlign.end,
                                          softWrap: true,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ))),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        elevation: 15.0,
                        color: Colors.blueAccent,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/images/cough.png",
                                    fit: BoxFit.cover,
                                    height: 120.0,
                                    width: 80.0,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        "COVID-19",
                                        style: GoogleFonts.poppins(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                            letterSpacing: 2),
                                        textAlign: TextAlign.end,
                                      ),
                                      Text(
                                        "caused by coronavirus",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                        textAlign: TextAlign.end,
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "Cover your mouth\nwhen you cough",
                                          style: GoogleFonts.poppins(
                                            fontSize: 14.0,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.end,
                                          softWrap: true,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ))),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        elevation: 15.0,
                        color: Colors.greenAccent,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/images/hand.png",
                                    fit: BoxFit.cover,
                                    height: 120.0,
                                    width: 100.0,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        "COVID-19",
                                        style: GoogleFonts.poppins(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                            letterSpacing: 2),
                                        textAlign: TextAlign.end,
                                      ),
                                      Text(
                                        "caused by coronavirus",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                        textAlign: TextAlign.end,
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "Maintain\nSocial Distancing",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14.0,
                                              color: Colors.white),
                                          textAlign: TextAlign.end,
                                          softWrap: true,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ))),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "India",
                    style: GoogleFonts.poppins(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>StatsScreen()
                      ));
                    },
                    child: Text(
                      "View More",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  color: Colors.white,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Last updated "+_today,
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(Icons.refresh),
                  ),
                  onTap: () {
                    _getLiveIndiaStats();
                    setState(() {
                      _today=DateFormat("dd-MM-yyyy HH:mm:ss").format(DateTime.now());
                    });
                    Fluttertoast.showToast(
                        msg: "Stats Updated", toastLength: Toast.LENGTH_LONG);
                    print("Updated");
                  },
                )
              ],
            ),
            FutureBuilder(
                future: _getLiveIndiaStats(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  _indiaStats.confirmed.toString(),
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blueGrey,
                                      fontSize: 20.0),
                                ),
                                Text(
                                  "Confirmed",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blueGrey,
                                      fontSize: 16.0),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  _indiaStats.recovered.toString(),
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green,
                                      fontSize: 20.0),
                                ),
                                Text(
                                  "Recovered",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green,
                                      fontSize: 16.0),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  _indiaStats.deaths.toString(),
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red,
                                      fontSize: 20.0),
                                ),
                                Text(
                                  "Deaths",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red,
                                      fontSize: 16.0),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>GlobalStatsScreen()));
              },
              child: Container(
                color: Colors.white,
                alignment: Alignment.topRight,
                padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
                child: Text(
                  "View Global Stats",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                "Explore",
                style: GoogleFonts.poppins(
                    fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 260.0,
              color: Colors.white,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: height / width,
                padding: EdgeInsets.all(16.0),
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FAQScreen()));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Image.asset(
                              "assets/images/qa.png",
                              fit: BoxFit.cover,
                              width: 50.0,
                              height: 50.0,
                              alignment: Alignment.topRight,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "FAQs",
                              style: GoogleFonts.catamaran(
                                  fontSize: 20.0,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HygieneScreen()));
                    },
                    child: Card(
                      color: Colors.pinkAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Image.asset(
                              "assets/images/hand-sanitizer.png",
                              fit: BoxFit.cover,
                              width: 50.0,
                              height: 50.0,
                              alignment: Alignment.topRight,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Handwash",
                              style: GoogleFonts.catamaran(
                                  fontSize: 20.0,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SelfTestScreen()));
                    },
                    child: Card(
                      color: Colors.lime,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Image.asset(
                              "assets/images/virus.png",
                              fit: BoxFit.cover,
                              width: 50.0,
                              height: 50.0,
                              alignment: Alignment.topRight,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Self Test",
                              style: GoogleFonts.catamaran(
                                  fontSize: 20.0,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MythsScreen()));
                    },
                    child: Card(
                      color: Colors.indigoAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Image.asset(
                              "assets/images/wizard.png",
                              fit: BoxFit.cover,
                              width: 50.0,
                              height: 50.0,
                              alignment: Alignment.topRight,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Myths",
                              style: GoogleFonts.catamaran(
                                  fontSize: 20.0,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
