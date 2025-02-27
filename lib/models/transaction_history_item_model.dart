class TransactionHistoryItemModel {
  final String title;
  final String date;
  final String amount;
  final bool isWithdrawal;

  const TransactionHistoryItemModel({
    required this.title,

    required this.amount,
    required this.date,
    required this.isWithdrawal,
  });
}
