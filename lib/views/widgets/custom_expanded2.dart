import 'package:dashboard/views/widgets/all_expensses.dart';
import 'package:dashboard/views/widgets/all_expensses_header.dart';
import 'package:dashboard/views/widgets/all_expensses_items_list_view.dart';
import 'package:dashboard/views/widgets/custom_expanded_3.dart';
import 'package:dashboard/views/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class CustomExpanded2 extends StatelessWidget {
  const CustomExpanded2({super.key, required this.isTablet, required this.isMobile});
  final bool isTablet;
  final bool isMobile; 
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
         !isMobile ? SizedBox(height: 24) :SizedBox(),
          AllExpensses(),
          SizedBox(height: 24),
          QuickInvoice(),
          SizedBox(height: 15),

          isTablet! ? CustomExpanded3() : SizedBox(),
        ],
      ),
    );
  }
}
