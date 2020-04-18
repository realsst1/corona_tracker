import 'package:coronatracker/models/data_point.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DataPointChart extends StatelessWidget {

  List<DataPoint> data;

  DataPointChart(this.data);

  @override
  Widget build(BuildContext context) {

    data=data.sublist(0,15);

    List<charts.Series<DataPoint,String>> series=[
      charts.Series(
        id: "Countries",
        data: data,
        domainFn: (DataPoint dp,_)=>dp.countryName,
        measureFn: (DataPoint dp,_)=>dp.totalCases,
        colorFn: (DataPoint dp,_)=>dp.barColor,
      )
    ];

    return charts.BarChart(
      series,
      animate: true,
      behaviors: [
        charts.SeriesLegend(),
        charts.SlidingViewport(),
        charts.PanAndZoomBehavior()
      ],
      domainAxis: charts.OrdinalAxisSpec(
        renderSpec: charts.SmallTickRendererSpec(labelRotation: 60),
      ),
      primaryMeasureAxis: charts.NumericAxisSpec(
        renderSpec: charts.GridlineRendererSpec(
            labelStyle: new charts.TextStyleSpec(
                fontSize: 14, // size in Pts.
                color: charts.MaterialPalette.black),

            // Change the line colors to match text color.
            lineStyle: new charts.LineStyleSpec(
                color: charts.MaterialPalette.black)
        )
      ),
    );
  }
}
