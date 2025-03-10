import 'package:dashboard/utils/app_styles.dart';
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
      appBar:
          MediaQuery.sizeOf(context).width < 700
              ? AppBar(
                elevation: 0,
                backgroundColor: Color(0xffFAFAFA),
                centerTitle: true,
                title: Text('Dashboard', style: AppStyles.textSemiBold24),
                leading: IconButton(
                  icon: Icon(Icons.menu, color: Color(0xff4EB7F2), size: 30),
                  onPressed: () {},
                ),
              )
              : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => DashboardMobileLayout(),
        tabletLayout: (context) => TabletDashboardLayout(),
        webLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
