import 'package:blue_wing_wms/src/app/replenishment/views/option_container.dart';
import 'package:flutter/material.dart';

class RepleDashboard extends StatefulWidget {
  const RepleDashboard({super.key});

  @override
  State<RepleDashboard> createState() => _RepleDashboardState();
}

class _RepleDashboardState extends State<RepleDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('let Down Dashboard')),
      body: RepleOptions(),
    );
  }
}
