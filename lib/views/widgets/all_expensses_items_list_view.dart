import 'package:dashboard/models/all_expensses_item_model.dart';
import 'package:dashboard/utils/app_assets.dart';
import 'package:dashboard/views/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpenssesItemsListView extends StatefulWidget {
  const AllExpenssesItemsListView({super.key});

  @override
  State<AllExpenssesItemsListView> createState() =>
      _AllExpenssesItemsListViewState();
}

class _AllExpenssesItemsListViewState extends State<AllExpenssesItemsListView> {
  final List<AllExpenssesItemModel> items = [
    AllExpenssesItemModel(
      title: 'Balance',
      image: Assets.imagesBalanceIcon,
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpenssesItemModel(
      title: 'Income',
      image: Assets.imagesIncomeIcon,
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpenssesItemModel(
      title: 'Expenses',
      image: Assets.imagesExpenses,
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        children:
            items.asMap().entries.map((e) {
              int index = e.key;
              var item = e.value;
              if (index == 1) {
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (activeIndex != index) {
                        setState(() {
                          activeIndex = index;
                        });
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: AllExpenssesItem(
                        item: item,
                        isActive: activeIndex == index,
                      ),
                    ),
                  ),
                );
              } else {
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (activeIndex != index) {
                        setState(() {
                          activeIndex = index;
                        });
                      }
                    },
                    child: AllExpenssesItem(
                      item: item,
                      isActive: activeIndex == index,
                    ),
                  ),
                );
              }
            }).toList(),
      ),
    );
  }
}
