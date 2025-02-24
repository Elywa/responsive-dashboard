import 'package:dashboard/models/lates_transaction_item_model.dart';
import 'package:dashboard/utils/app_assets.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/views/widgets/custom_botton.dart';
import 'package:dashboard/views/widgets/custom_text_field.dart';
import 'package:dashboard/views/widgets/latest_transaction_list_view.dart';
import 'package:dashboard/views/widgets/title_text_field.dart';
import 'package:dashboard/views/widgets/user_info_list.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Latest Transaction", style: AppStyles.textMedium16),
          SizedBox(height: 12),
          LatestTransactionListView(),
          SizedBox(height: 24),
          Divider(color: Color(0xFFF1F1F1), thickness: 1),
          Row(
            children: [
              Expanded(child: TitleTextField(title: "Customer Name")),
              SizedBox(width: 16),
              Expanded(child: TitleTextField(title: "Customer Email")),
            ],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(child: TitleTextField(title: "Item name")),
              SizedBox(width: 16),
              Expanded(child: TitleTextField(title: "Item mount")),
            ],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  backgroundColor: Colors.transparent,
                  text: "Add more details",
                  textColor: Color(0xFF4EB7F2),
                ),
              ),
              SizedBox(width: 24),
              Expanded(
                child: CustomButton(
                  backgroundColor: Color(0xFF4EB7F2),
                  text: "Send Money",
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}

