import 'package:coronatracker/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Corona Tracker",
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
