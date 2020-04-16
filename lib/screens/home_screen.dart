import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "COVID-19",
            style: GoogleFonts.poppins(
              fontSize: 24.0,
              fontWeight: FontWeight.w900,
              color: Colors.black87
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CarouselSlider(
              autoPlay: true,
              autoPlayInterval: Duration(milliseconds: 3000),
              autoPlayAnimationDuration: Duration(milliseconds: 500),
              initialPage: 0,
              enlargeCenterPage: true,
              height: 140.0,
              items: <Widget>[
                Card(
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
          )
        ],
      ),
    );
  }
}
