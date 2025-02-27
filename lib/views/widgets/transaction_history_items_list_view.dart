import 'package:dashboard/models/transaction_history_item_model.dart';
import 'package:dashboard/views/widgets/tranaction_history_item.dart';
import 'package:flutter/material.dart';

class TransactionHistoryItemsListView extends StatelessWidget {
  const TransactionHistoryItemsListView({super.key});
  static const List<TransactionHistoryItemModel> items = [
    TransactionHistoryItemModel(
      title: "Cash Withdrawal",
      amount: r"$20,129",
      date: "13 Apr, 2022 ",
      isWithdrawal: true,
    ),
    TransactionHistoryItemModel(
      title: "Landing Page project",
      amount: r"$2,000",
      date: "13 Apr, 2022 at 3:30 PM ",
      isWithdrawal: false,
    ),
    TransactionHistoryItemModel(
      title: "Juni Mobile App project",
      amount: r"$20,129",
      date: "13 Apr, 2022 at 3:30 PM ",
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: TransactionHistoryItem(model: items[index]),
        );
      },
    );
  }
}
