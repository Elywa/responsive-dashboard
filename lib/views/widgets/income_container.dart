import 'package:dashboard/views/widgets/all_expensses_header.dart';
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
        children: [CustomHeader(title: "Income"), SizedBox(height: 16)],
      ),
    );
  }
}
