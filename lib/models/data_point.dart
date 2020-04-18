import 'package:charts_flutter/flutter.dart' as charts;

class DataPoint{
  final String countryName;
  final int totalCases;
  final charts.Color barColor;

  DataPoint(this.countryName,this.totalCases,this.barColor);
}