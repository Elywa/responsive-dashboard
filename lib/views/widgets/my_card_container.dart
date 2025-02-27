import 'package:dashboard/models/transaction_history_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/views/widgets/dashboard_desktop_layout.dart';
import 'package:dashboard/views/widgets/expendable_page_view.dart';
import 'package:dashboard/views/widgets/row_indicators.dart';
import 'package:dashboard/views/widgets/transaction_history_header.dart';
import 'package:dashboard/views/widgets/transaction_history_items_list_view.dart';
import 'package:flutter/material.dart';

class MyCardWidgetContainer extends StatefulWidget {
  const MyCardWidgetContainer({super.key});

  @override
  State<MyCardWidgetContainer> createState() => _MyCardWidgetContainerState();
}

class _MyCardWidgetContainerState extends State<MyCardWidgetContainer> {
  late PageController controller;
  int currentPageIndex = 0;

  @override
  void initState() {
    controller = PageController();
    controller.addListener(() {
      setState(() {
        currentPageIndex = controller.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My Card", style: AppStyles.textSemiBold20),
          SizedBox(height: 20),
          ExpandableCardPageView(controller: controller),
          SizedBox(height: 20),
          RowIndicators(currentPageIndex: currentPageIndex),
          Divider(color: Color(0xffF1F1F1), thickness: 1, height: 40),
          TransactionHistoryHeader(),
          SizedBox(height: 20),
          Text("13 April 2022", style: AppStyles.textMedium16),
          SizedBox(height: 16),
          TransactionHistoryItemsListView(),
        ],
      ),
    );
  }
}
