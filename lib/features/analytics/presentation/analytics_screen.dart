import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/feature_scaffold.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FeatureScaffold(title: 'Analytics', children: [
      SizedBox(
        height: 220,
        child: LineChart(LineChartData(
          gridData: const FlGridData(show: false),
          titlesData: const FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          lineBarsData: [LineChartBarData(spots: const [FlSpot(0,2),FlSpot(1,3),FlSpot(2,2.5),FlSpot(3,4)], isCurved: true)],
        )),
      )
    ]);
  }
}
