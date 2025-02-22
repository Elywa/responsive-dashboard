import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/app_assets.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/views/widgets/active_and_inactive_drawer_item.dart';
import 'package:dashboard/views/widgets/custom_drawer_item.dart';
import 'package:dashboard/views/widgets/drawer_items_list_view.dart';
import 'package:dashboard/views/widgets/user_info_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoList(
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
              leadingIcon: Assets.imagesAvatar3,
            ),
          ),
          DrawerItemsListView(),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveDrawerItem(
                  drawerItem: DrawerItemModel(
                    title: 'Setting system',
                    route: Assets.imagesSetting2,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItem: DrawerItemModel(
                    title: 'Logout account',
                    route: Assets.imagesLogout,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
