import 'package:dashboard/views/widgets/custom_drawer.dart';
import 'package:dashboard/views/widgets/custom_expanded2.dart';
import 'package:dashboard/views/widgets/custom_expanded_3.dart';
import 'package:flutter/material.dart';

class TabletDashboardLayout extends StatelessWidget {
  const TabletDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(width: 40),
        Expanded(flex: 2, child: CustomExpanded2(isTablet: true)),
        SizedBox(width: 40),
      ],
    );
  }
}
