import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses', style: AppStyles.textSemiBold20),
        Spacer(),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            child: Row(
              children: [
                Text('Monthly', style: AppStyles.textMedium16),
                const SizedBox(width: 18),
                Transform.rotate(
                  angle: 1.5708,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff064061),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
