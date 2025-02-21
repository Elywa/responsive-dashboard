import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/app_assets.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/views/widgets/user_info_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoList(
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
            leadingIcon: Assets.imagesAvatar3,
          ),
          DrawerItemsListView(),
        ],
      ),
    );
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItem});
  final DrawerItemModel drawerItem;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListTile(
        leading: SvgPicture.asset(drawerItem.route),
        title: Text(drawerItem.title, style: AppStyles.textRegular16),
      ),
    );
  }
}

class DrawerItemsListView extends StatelessWidget {
  const DrawerItemsListView({super.key});
  static const List<DrawerItemModel> drawerItems = [
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
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          return InActiveDrawerItem(drawerItem: drawerItems[index]);
        },
      ),
    );
  }
}
