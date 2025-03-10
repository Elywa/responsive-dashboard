import 'package:dashboard/views/widgets/custom_expanded2.dart';
import 'package:flutter/material.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [CustomExpanded2(isTablet: true)]),
    );
  }
}
