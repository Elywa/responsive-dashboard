import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItem});

  final DrawerItemModel drawerItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItem.route),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(drawerItem.title, style: AppStyles.textRegular16),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItem});

  final DrawerItemModel drawerItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItem.route),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(drawerItem.title, style: AppStyles.textBold16),
      ),
      trailing: Container(width: 5, color: Color(0xFF4EB7F2)),
    );
  }
}
