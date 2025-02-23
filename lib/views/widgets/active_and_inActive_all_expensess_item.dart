import 'package:dashboard/models/all_expensses_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/views/widgets/all_expensses_item_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveAllExpenssesItem extends StatelessWidget {
  const ActiveAllExpenssesItem({super.key, required this.item});

  final AllExpenssesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            item: item,
            backgroundImageColor: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
            arrowColor: Colors.white,
          ),
          const SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.title,
              style: AppStyles.textSemiBold16.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.date,
              style: AppStyles.textRegular14.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.price,
              style: AppStyles.textSemiBold24.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class InActiveAllExpenssesItem extends StatelessWidget {
  const InActiveAllExpenssesItem({super.key, required this.item});

  final AllExpenssesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            item: item,
            backgroundImageColor: Color(0xffFAFAFA),
            imageColor: Color(0xff4EB7F2),
            arrowColor: Color(0xff4EB7F2),
          ),
          const SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(item.title, style: AppStyles.textSemiBold16),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(item.date, style: AppStyles.textRegular14),
          ),
          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(item.price, style: AppStyles.textSemiBold24),
          ),
        ],
      ),
    );
  }
}
