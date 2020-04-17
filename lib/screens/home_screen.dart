import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
  String today = DateFormat("dd-MM-yyyy").format(DateTime.now());

  @override
  Widget build(BuildContext context) {

    final height=MediaQuery.of(context).size.height/3.5;
    final width=MediaQuery.of(context).size.width/3.5;

    return Scaffold(
      appBar: AppBar(
        title: Text(
            "COVID-19",
            style: GoogleFonts.poppins(
              fontSize: 24.0,
              fontWeight: FontWeight.w900,
              color: Colors.black87,
              letterSpacing: 2
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
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
                        borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),
                      elevation: 15.0,
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:Row(
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
                                        letterSpacing: 2
                                    ),
                                    textAlign: TextAlign.end,
                                  ),
                                  Text(
                                    "caused by coronavirus",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white
                                    ),
                                    textAlign: TextAlign.end,
                                  ),
                                  SizedBox(height: 5.0,),
                                  Text(
                                    "#StayHome#StaySafe",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14.0,
                                        color: Colors.white
                                    ),
                                    textAlign: TextAlign.start,
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      )
                    ),

                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0))
                        ),
                        elevation: 15.0,
                        color: Colors.blueAccent,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:Row(
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
                                            letterSpacing: 2
                                        ),
                                        textAlign: TextAlign.end,
                                      ),
                                      Text(
                                        "caused by coronavirus",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white
                                        ),
                                        textAlign: TextAlign.end,
                                      ),
                                      SizedBox(height: 5.0,),
                                      Expanded(
                                        child: Text(
                                          "Wash your hands \nevery 20 minutes",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14.0,
                                              color: Colors.white
                                          ),
                                          textAlign: TextAlign.start,
                                          softWrap: true,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                        )
                    ),

                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0))
                        ),
                        elevation: 15.0,
                        color: Colors.deepOrange,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:Row(
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
                                            letterSpacing: 2
                                        ),
                                        textAlign: TextAlign.end,
                                      ),
                                      Text(
                                        "caused by coronavirus",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white
                                        ),
                                        textAlign: TextAlign.end,
                                      ),
                                      SizedBox(height: 5.0,),
                                      Expanded(
                                        child: Text(
                                          "Have fever ?\nConsult your doctor",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14.0,
                                              color: Colors.white
                                          ),
                                          textAlign: TextAlign.end,
                                          softWrap: true,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                        )
                    ),

                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0))
                        ),
                        elevation: 15.0,
                        color: Colors.blueAccent,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:Row(
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
                                          letterSpacing: 2
                                        ),
                                        textAlign: TextAlign.end,
                                      ),
                                      Text(
                                        "caused by coronavirus",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white
                                        ),
                                        textAlign: TextAlign.end,
                                      ),
                                      SizedBox(height: 5.0,),
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
                            )
                        )
                    ),

                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0))
                        ),
                      elevation: 15.0,
                        color: Colors.greenAccent,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:Row(
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
                                            letterSpacing: 2
                                        ),
                                        textAlign: TextAlign.end,
                                      ),
                                      Text(
                                        "caused by coronavirus",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white
                                        ),
                                        textAlign: TextAlign.end,
                                      ),
                                      SizedBox(height: 5.0,),
                                      Expanded(
                                        child: Text(
                                          "Maintain\nSocial Distancing",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14.0,
                                              color: Colors.white
                                          ),
                                          textAlign: TextAlign.end,
                                          softWrap: true,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                        )
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal:16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "India",
                    style: GoogleFonts.poppins(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1
                    ),
                  ),
                  InkWell(
                    child: Text(
                      "View More",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                today,
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal:8.0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Card(
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "12000",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Colors.blueGrey,
                              fontSize: 20.0
                            ),
                          ),
                          Text(
                            "Confirmed",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Colors.blueGrey,
                                fontSize: 16.0
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "12000",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Colors.green,
                                fontSize: 20.0
                            ),
                          ),
                          Text(
                            "Recovered",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Colors.green,
                                fontSize: 16.0
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "12000",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Colors.red,
                                fontSize: 20.0
                            ),
                          ),
                          Text(
                            "Deaths",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Colors.red,
                                fontSize: 16.0
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
              child: Text(
                "Explore",
                style: GoogleFonts.poppins(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              height: 260.0,
              color: Colors.white,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: height/width,
                padding: EdgeInsets.all(16.0),
                children: <Widget>[
                  Card(
                    color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Image.asset(
                            "assets/images/qa.png",
                            fit: BoxFit.cover,
                            width: 50.0,
                            height: 50.0,
                            alignment: Alignment.topRight,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Text(
                            "FAQs",
                            style: GoogleFonts.catamaran(
                              fontSize: 20.0,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.redAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Image.asset(
                            "assets/images/hand-sanitizer.png",
                            fit: BoxFit.cover,
                            width: 50.0,
                            height: 50.0,
                            alignment: Alignment.topRight,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Text(
                            "Hygiene",
                            style: GoogleFonts.catamaran(
                                fontSize: 20.0,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Image.asset(
                            "assets/images/virus.png",
                            fit: BoxFit.cover,
                            width: 50.0,
                            height: 50.0,
                            alignment: Alignment.topRight,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Text(
                            "Covid-19".toUpperCase(),
                            style: GoogleFonts.catamaran(
                                fontSize: 20.0,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Image.asset(
                            "assets/images/wizard.png",
                            fit: BoxFit.cover,
                            width: 50.0,
                            height: 50.0,
                            alignment: Alignment.topRight,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Text(
                            "Myths",
                            style: GoogleFonts.catamaran(
                                fontSize: 20.0,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        )
                      ],
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
