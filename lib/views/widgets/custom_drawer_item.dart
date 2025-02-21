import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/views/widgets/active_and_inactive_drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.drawerItem,
    required this.isActive,
  });
  final DrawerItemModel drawerItem;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child:
          isActive
              ? ActiveDrawerItem(drawerItem: drawerItem)
              : InActiveDrawerItem(drawerItem: drawerItem),
    );
  }
}