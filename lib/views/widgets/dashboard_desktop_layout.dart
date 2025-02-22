import 'package:dashboard/views/widgets/custom_expanded2.dart';
import 'package:dashboard/views/widgets/custom_drawer.dart';

import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        const SizedBox(width: 32),
        Expanded(flex: 3, child: CustomExpanded2()),
        Expanded(flex: 2, child: const SizedBox()),
      ],
    );
  }
}
