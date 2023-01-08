// ignore_for_file: prefer_final_fields

import 'package:blue_wing_wms/src/app/wave/views/wave_my_tab.dart';
import 'package:blue_wing_wms/src/app/wave/views/wave_pool_tab.dart';
import 'package:flutter/material.dart';

class WaveScreen extends StatelessWidget {
  const WaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: const Text("WAVE"),
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.all_inclusive)),
              Tab(icon: Icon(Icons.alt_route_outlined)),
              Tab(icon: Icon(Icons.settings)),
            ])),
        body: const TabBarView(
          children: [
            WavePool(),
            WaveMyList(),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

////////////////////////////////////////////////






      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.of(context).push(
      //       MaterialPageRoute(builder: (context) => const AddLetDownRec()),
      //     );
      //   },
      //   backgroundColor: ctPrimaryColor,
      //   child: const Icon(
      //     Icons.add,
      //     color: Colors.white70,
      //   ),
      // ),