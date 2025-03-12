import 'package:dashboard/views/widgets/custom_expanded2.dart';
import 'package:dashboard/views/widgets/custom_drawer.dart';
import 'package:dashboard/views/widgets/custom_expanded_3.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        const SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomExpanded2(isTablet: false, isMobile: false),
        ),
        const SizedBox(width: 28),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(child: const CustomExpanded3()),
        ),
        const SizedBox(width: 32),
      ],
    );
  }
}
