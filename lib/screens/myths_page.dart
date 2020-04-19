import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MythsScreen extends StatefulWidget {
  @override
  _MythsScreenState createState() => _MythsScreenState();
}

class _MythsScreenState extends State<MythsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Myths Buster",
          style: GoogleFonts.poppins(
            letterSpacing: 2,
            color: Colors.black
          ),
        ),
        centerTitle: true,
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ExpansionTile(
              title: Text(
                "5G mobile networks SPREADS COVID-19",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600
                ),
              ),
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl:"https://www.who.int/images/default-source/health-topics/coronavirus/myth-busters/web-mythbusters/eng-mythbusting-ncov-(15).tmb-1024v.png?sfvrsn=a8b9e94_1",
                )
              ],
            ),
          ),

          Card(
            child: ExpansionTile(
              title: Text(
                "Exposing yourself to the sun or to temperatures higher than 25C degrees PREVENTS the coronavirus disease (COVID-19)",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600
                ),
              ),
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl:"https://www.who.int/images/default-source/health-topics/coronavirus/myth-busters/web-mythbusters/mb-sun-exposure.tmb-1024v.jpg?sfvrsn=658ce588_4",
                )
              ],
            ),
          ),

          Card(
            child: ExpansionTile(
              title: Text(
                "You CANNOT recover from the coronavirus disease (COVID-19). Catching the new coronavirus MEANS you will have it for life.",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600
                ),
              ),
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl:"https://www.who.int/images/default-source/health-topics/coronavirus/myth-busters/web-mythbusters/mb-recovery.tmb-1024v.jpg?sfvrsn=1404cfd0_4",
                )
              ],
            ),
          ),

          Card(
            child: ExpansionTile(
              title: Text(
                "Being able to hold your breath for 10 seconds or more without coughing or feeling discomfort MEANS you are free from the coronavirus disease (COVID-19) or any other lung disease.",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600
                ),
              ),
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl:"https://www.who.int/images/default-source/health-topics/coronavirus/myth-busters/web-mythbusters/mb-breathing-exercice.tmb-1024v.jpg?sfvrsn=db06f4a9_4",
                )
              ],
            ),
          ),

          Card(
            child: ExpansionTile(
              title: Text(
                "Drinking alcohol does not PROTECTS you against COVID-19 and can be dangerous",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600
                ),
              ),
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl:"https://www.who.int/images/default-source/health-topics/coronavirus/myth-busters/web-mythbusters/mb-alcohol.tmb-1024v.jpg?sfvrsn=19ea13fb_4",
                )
              ],
            ),
          ),

          Card(
            child: ExpansionTile(
              title: Text(
                "COVID-19 virus CANNOT be transmitted in areas with hot and humid climates",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600
                ),
              ),
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl:"https://www.who.int/images/default-source/health-topics/coronavirus/myth-busters/52.tmb-1024v.png?sfvrsn=862374e_4",
                )
              ],
            ),
          ),

          Card(
            child: ExpansionTile(
              title: Text(
                "Cold weather and snow CAN kill the new coronavirus.",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600
                ),
              ),
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl:"https://www.who.int/images/default-source/health-topics/coronavirus/myth-busters/web-mythbusters/mb-cold-snow.tmb-1920v.png?sfvrsn=1e557ba_4",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
