import 'package:dashboard/utils/app_assets.dart';
import 'package:dashboard/views/widgets/user_info_list.dart';
import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
