import 'package:dashboard/views/widgets/adaptive_layout.dart';
import 'package:dashboard/views/widgets/dashboard_desktop_layout.dart';
import 'package:dashboard/views/widgets/dashboard_mobile_layout.dart';
import 'package:dashboard/views/widgets/tablet_dashboard_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => DashboardMobileLayout(),
        tabletLayout: (context) => TabletDashboardLayout(),
        webLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
