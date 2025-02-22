import 'package:dashboard/models/all_expensses_item_model.dart';
import 'package:dashboard/views/widgets/active_and_inActive_all_expensess_item.dart';
import 'package:flutter/material.dart';

class AllExpenssesItem extends StatelessWidget {
  const AllExpenssesItem({
    super.key,
    required this.item,
    required this.isActive,
  });
  final AllExpenssesItemModel item;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpenssesItem(item: item)
        : InActiveAllExpenssesItem(item: item);
  }
}