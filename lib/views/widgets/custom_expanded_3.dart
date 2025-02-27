import 'package:dashboard/views/widgets/all_expensses_header.dart';
import 'package:dashboard/views/widgets/dashboard_desktop_layout.dart';
import 'package:dashboard/views/widgets/income_container.dart';
import 'package:dashboard/views/widgets/my_card_container.dart';
import 'package:flutter/material.dart';

class CustomExpanded3 extends StatelessWidget {
  const CustomExpanded3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            MyCardWidgetContainer(),
            SizedBox(height: 24),
            IncomeConatainer(),
          ],
        ),
      ),
    );
  }
}


