import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/app_assets.dart';
import 'package:dashboard/views/widgets/custom_drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int _selectedIndex = 0;

  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: 'Dashboard', route: Assets.imagesDashboardIcon),
    DrawerItemModel(
      title: 'My Transaction',
      route: Assets.imagesTransactionIcon,
    ),
    DrawerItemModel(title: 'Statistics', route: Assets.imagesStatisticesIcon),
    DrawerItemModel(title: 'Wallet Account', route: Assets.imagesWalletIcon),
    DrawerItemModel(
      title: 'My Investments',
      route: Assets.imagesInvestmentsIcon,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (_selectedIndex != index) {
              setState(() {
                _selectedIndex = index;
                debugPrint(_selectedIndex.toString());
              });
            }
          },
          child: CustomDrawerItem(
            isActive: _selectedIndex == index,
            drawerItem: drawerItems[index],
          ),
        );
      },
    );
  }
}
