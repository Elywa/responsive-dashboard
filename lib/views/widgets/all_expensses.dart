import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/views/widgets/all_expensses_header.dart';
import 'package:flutter/material.dart';

class AllExpensses extends StatelessWidget {
  const AllExpensses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: AllExpensesHeader(),
          ),
        ],
      ),
    );
  }
}
