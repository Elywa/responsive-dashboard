import 'package:dashboard/models/all_expensses_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({
    super.key,
    required this.item,
    required this.imageColor,
    required this.arrowColor,
    required this.backgroundImageColor,
  });
  final Color imageColor, arrowColor, backgroundImageColor;
  final AllExpenssesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: backgroundImageColor,
          child: Center(
            child: SvgPicture.asset(
              item.image,
              colorFilter: ColorFilter.mode(imageColor, BlendMode.srcIn),
            ),
          ),
        ),
        Spacer(),

        Icon(Icons.arrow_forward_ios, color: arrowColor),
      ],
    );
  }
}