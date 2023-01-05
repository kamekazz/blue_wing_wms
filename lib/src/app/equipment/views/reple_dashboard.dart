import 'package:blue_wing_wms/src/app/equipment/views/option_container.dart';
import 'package:flutter/material.dart';

class EquipmentDashboard extends StatefulWidget {
  const EquipmentDashboard({super.key});

  @override
  State<EquipmentDashboard> createState() => _EquipmentDashboardState();
}

class _EquipmentDashboardState extends State<EquipmentDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('let Down Dashboard')),
      body: const RepleOptions(),
    );
  }
}
