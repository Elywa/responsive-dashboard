import 'package:dashboard/views/widgets/credit_card_widget.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class ExpandableCardPageView extends StatelessWidget {
  const ExpandableCardPageView({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CreditCardWidget(),
        ),
      ),
    );
  }
}