import 'package:dashboard/models/all_expensses_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
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
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white.withOpacity(0.10000000149011612),
                child: Center(
                  child: SvgPicture.asset(
                    item.image,
                    colorFilter: ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              Spacer(),

              Icon(Icons.arrow_forward_ios, color: Colors.white),
            ],
          ),
          const SizedBox(height: 34),
          Text(
            item.title,
            style: AppStyles.textSemiBold16.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            item.date,
            style: AppStyles.textRegular14.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 16),
          Text(
            item.price,
            style: AppStyles.textSemiBold24.copyWith(color: Colors.white),
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
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xffFAFAFA),
                child: Center(child: SvgPicture.asset(item.image)),
              ),
              Spacer(),

              Icon(Icons.arrow_forward_ios, color: Color(0xff064061)),
            ],
          ),
          const SizedBox(height: 34),
          Text(item.title, style: AppStyles.textSemiBold16),
          const SizedBox(height: 8),
          Text(item.date, style: AppStyles.textRegular14),
          const SizedBox(height: 16),
          Text(item.price, style: AppStyles.textSemiBold24),
        ],
      ),
    );
  }
}