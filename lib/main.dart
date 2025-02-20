import 'package:dashboard/views/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveDashboardView());
}

class ResponsiveDashboardView extends StatelessWidget {
  const ResponsiveDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
