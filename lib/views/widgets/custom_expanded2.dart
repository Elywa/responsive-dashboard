import 'package:dashboard/views/widgets/all_expensses.dart';
import 'package:dashboard/views/widgets/all_expensses_header.dart';
import 'package:dashboard/views/widgets/all_expensses_items_list_view.dart';
import 'package:flutter/material.dart';

class CustomExpanded2 extends StatelessWidget {
  const CustomExpanded2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        AllExpensses(
          
        ),
      ],
    );
  }
}
