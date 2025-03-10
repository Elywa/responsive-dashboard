import 'package:dashboard/models/income_details_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.item});
  final IncomeDetailsItemModel item;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          CircleAvatar(radius: 4, backgroundColor: item.color),
          SizedBox(width: 8),
          Text(item.title, style: AppStyles.textRegular16),
          Spacer(),
          Text(item.value, style: AppStyles.textMedium16),
        ],
      ),
    );
  }
}
