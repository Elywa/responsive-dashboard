import 'dart:developer';

import 'package:dashboard/views/widgets/all_expensses_header.dart';
import 'package:dashboard/views/widgets/chart.dart';
import 'package:dashboard/views/widgets/income_details.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeConatainer extends StatelessWidget {
  const IncomeConatainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          CustomHeader(title: "Income"),
          SizedBox(height: 16),
          ChartSection(), // Define height
        ],
      ),
    );
  }
}

class ChartSection extends StatelessWidget {
  const ChartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Set a fixed height
      child: Row(
        children: [
          AspectRatio(aspectRatio: 1, child: Chart()),
          SizedBox(width: 40),
          IncomeDetails(),
        ],
      ),
    );
  }
}
