import 'dart:developer';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(getChartDate());
  }

  PieChartData getChartDate() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, response) {
          // response has every thing about each section in chart when mouse hover on it
          log(response.toString());

          int index = response?.touchedSection?.touchedSectionIndex ?? -1;
          activeIndex = index;

          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          color: Color(0xff208CC8),
          value: 40,
          radius: activeIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          color: Color(0xff064061),
          value: 20,
          radius: activeIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          color: Color(0xff4EB7F2),
          value: 25,
          radius: activeIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          color: Color(0xffE2DECD),
          value: 22,
          radius: activeIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
