import 'package:dashboard/models/lates_transaction_item_model.dart';
import 'package:dashboard/utils/app_assets.dart';
import 'package:dashboard/views/widgets/user_info_list.dart';
import 'package:flutter/material.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  final List<LatesTransactionItemModel> items = const [
    LatesTransactionItemModel(
      image: Assets.imagesAvatar1,
      title: "Madrani Andi",
      mail: "Madraniadi20@gmail",
    ),
    LatesTransactionItemModel(
      image: Assets.imagesAvatar2,
      title: "Josua Nunito",
      mail: "Josh Nunito@gmail.com",
    ),
    LatesTransactionItemModel(
      image: Assets.imagesAvatar3,
      title: "Ahmed Eliwa",
      mail: "aeliwa13@gmail",
    ),
    LatesTransactionItemModel(
      image: Assets.imagesAvatar3,
      title: "Ahmed Eliwa",
      mail: "aeliwa13@gmail",
    ),
    LatesTransactionItemModel(
      image: Assets.imagesAvatar3,
      title: "Ahmed Eliwa",
      mail: "aeliwa13@gmail",
    ),
    LatesTransactionItemModel(
      image: Assets.imagesAvatar3,
      title: "Ahmed Eliwa",
      mail: "aeliwa13@gmail",
    ),
    LatesTransactionItemModel(
      image: Assets.imagesAvatar3,
      title: "Ahmed Eliwa",
      mail: "aeliwa13@gmail",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            items
                .map((e) => IntrinsicWidth(child: UserInfoList(item: e)))
                .toList(),
      ),
    );
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(child: UserInfoList(item: items[index]));
        },
      ),
    );
  }
}
