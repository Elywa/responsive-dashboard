import 'package:dashboard/models/transaction_history_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.model});
  final TransactionHistoryItemModel model;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 78,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFAFAFA),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: ListTile(
            title: Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(model.title, style: AppStyles.textSemiBold16),
            ),
            subtitle: Text(model.date, style: AppStyles.textRegular16),
            trailing: Text(
              model.amount,
              style: AppStyles.textSemiBold20.copyWith(
                color:
                    model.isWithdrawal ? Color(0xffFF5B5B) : Color(0xff7DD97B),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
