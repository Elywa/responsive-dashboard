import 'package:dashboard/views/widgets/chart.dart';
import 'package:dashboard/views/widgets/income_details.dart';
import 'package:flutter/material.dart';

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
