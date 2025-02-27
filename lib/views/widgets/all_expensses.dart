import 'package:dashboard/views/widgets/all_expensses_header.dart';
import 'package:dashboard/views/widgets/all_expensses_items_list_view.dart';
import 'package:dashboard/views/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

class AllExpensses extends StatelessWidget {
  const AllExpensses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: CustomHeader(title: "All Expenses"),
          ),
          AllExpenssesItemsListView(),
        ],
      ),
    );
  }
}
