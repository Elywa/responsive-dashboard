import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoList extends StatelessWidget {
  const UserInfoList({
    super.key,
    required this.title,
    required this.leadingIcon,
    required this.subtitle,
  });
  final String title, leadingIcon, subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(leadingIcon),
        title: Text(title, style: AppStyles.textSemiBold16),
        subtitle: Text(subtitle, style: AppStyles.textRegular12),
      ),
    );
  }
}
