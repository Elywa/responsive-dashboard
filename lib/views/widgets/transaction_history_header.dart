import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Transaction History",
          style: AppStyles.textSemiBold20.copyWith(color: Colors.black),
        ),
        Spacer(),
        Text(
          "See all",
          style: AppStyles.textMedium16.copyWith(color: Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}