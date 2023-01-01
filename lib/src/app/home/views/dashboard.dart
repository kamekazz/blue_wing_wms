import 'package:blue_wing_wms/src/app/home/controller/counterController.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    //Variables
//Dark mode

    return Scaffold(
      appBar: AppBar(title: Text('Hello')),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Obx(() => Text('Clicks: ${counterController.counter.value}')),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(OtherScreen());
              },
              child: Text('Open Other Screen'))
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
      ),
    );
  }
}

class OtherScreen extends StatelessWidget {
  OtherScreen({super.key});
  final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Screen was clicked ${_counterController.counter.value}'),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Go back'))
        ]),
      ),
    );
  }
}

//  AuthenticationRepository.instance.logout();
