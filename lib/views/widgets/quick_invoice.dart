import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/views/widgets/custom_background_container.dart';
import 'package:dashboard/views/widgets/latest_transaction.dart';
import 'package:dashboard/views/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(children: [QuickInvoiceHeader(), LatestTransaction()]),
    );
  }
}
