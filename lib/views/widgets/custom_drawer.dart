import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/models/lates_transaction_item_model.dart';
import 'package:dashboard/utils/app_assets.dart';
import 'package:dashboard/views/widgets/active_and_inactive_drawer_item.dart';
import 'package:dashboard/views/widgets/drawer_items_list_view.dart';
import 'package:dashboard/views/widgets/user_info_list.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoList(
              item: LatesTransactionItemModel(
                image: Assets.imagesAvatar1,
                title: "Ahmed Eliwa",
                mail: "aeliwa13@gmail.com",
              ),
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
