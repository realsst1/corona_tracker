import 'package:coronatracker/screens/india_stats_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatsScreen extends StatefulWidget {
  @override
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {

    var brightness=MediaQuery.of(context).platformBrightness;
    bool isDark=brightness==Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDark?Colors.black87:Colors.white,
        leading: BackButton(
          color: isDark?Colors.white:Colors.black87,
        ),
        title: Text(
          "Statistics".toUpperCase(),
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w900,
            color: isDark?Colors.white:Colors.black87,
            letterSpacing: 2
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(16.0),
              color:isDark?Colors.black87:Colors.white,
              child: Text(
                "India Statewise",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0
                ),
              ),
            ),
            Container(child: IndiaStatsScreen(),color: isDark?Colors.black87:Colors.white,),
          ],
        ),
      ),
    );
  }
}
