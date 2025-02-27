import 'package:dashboard/views/widgets/dot_indicator.dart';
import 'package:flutter/material.dart';

class RowIndicators extends StatelessWidget {
  const RowIndicators({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: DotIndicator(isActive: index == currentPageIndex),
        ),
      ),
    );
  }
}
