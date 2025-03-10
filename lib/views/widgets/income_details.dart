import 'package:dashboard/models/income_details_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/views/widgets/income_details_item.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<IncomeDetailsItemModel> incomeDetailsItems = [
    IncomeDetailsItemModel(
      title: "Design service",
      value: "40 %",
      color: Color(0xff208CC8),
    ),
    IncomeDetailsItemModel(
      title: "Design product",
      value: "25 %",
      color: Color(0xff4EB7F2),
    ),
    IncomeDetailsItemModel(
      title: "Product royalti",
      value: "20 %",
      color: Color(0xff064061),
    ),
    IncomeDetailsItemModel(
      title: "Other",
      value: "22 %",
      color: Color(0xffE2DECD),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IncomeDetailsItem(item: incomeDetailsItems[0]),
          IncomeDetailsItem(item: incomeDetailsItems[1]),
          IncomeDetailsItem(item: incomeDetailsItems[2]),
          IncomeDetailsItem(item: incomeDetailsItems[3]),
        ],
      ),
    );
    return ListView.builder(
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: incomeDetailsItems.length,
      itemBuilder: (context, index) {
        return IncomeDetailsItem(item: incomeDetailsItems[index]);
      },
    );
  }
}
