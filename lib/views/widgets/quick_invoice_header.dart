import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Text("Quick Invoice", style: AppStyles.textSemiBold20),
          Spacer(),
          CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xFFFAFAFA),
            child: Icon(Icons.add, color: Color(0xFF4EB7F2)),
          ),
        ],
      ),
    );
  }
}