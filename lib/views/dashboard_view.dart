import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/views/widgets/adaptive_layout.dart';
import 'package:dashboard/views/widgets/custom_drawer.dart';
import 'package:dashboard/views/widgets/dashboard_desktop_layout.dart';
import 'package:dashboard/views/widgets/dashboard_mobile_layout.dart';
import 'package:dashboard/views/widgets/tablet_dashboard_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MediaQuery.sizeOf(context).width < 800 ? CustomDrawer() : null,
      appBar:
          MediaQuery.sizeOf(context).width < 800
              ? AppBar(
                elevation: 0,
                backgroundColor: Color(0xffFAFAFA),
                centerTitle: true,
                title: Text('Dashboard', style: AppStyles.textSemiBold24),
                leading: IconButton(
                  icon: Icon(Icons.menu, color: Color(0xff4EB7F2), size: 30),
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
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
