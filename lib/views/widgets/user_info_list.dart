import 'package:dashboard/models/lates_transaction_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoList extends StatelessWidget {
  const UserInfoList({
    super.key,
required this.item
  });
  // final String title, leadingIcon, subtitle;
  final LatesTransactionItemModel item;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(item.image),
        title: Text(item.title, style: AppStyles.textSemiBold16),
        subtitle: Text(item.mail, style: AppStyles.textRegular12),
      ),
    );
  }
}
