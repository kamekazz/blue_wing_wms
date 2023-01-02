import 'package:blue_wing_wms/src/app/auth/controllers/auth_methods.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const String routeName = '/DashboardScreen';
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                AuthMethods().signOut();
              },
              child: Text('long out'))
        ],
      )),
    );
  }
}
