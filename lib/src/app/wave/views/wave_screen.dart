// ignore_for_file: prefer_final_fields

import 'package:blue_wing_wms/src/app/wave/controller/wave_methods.dart';
import 'package:blue_wing_wms/src/app/wave/views/add_let_down_rec.dart';
import 'package:blue_wing_wms/src/constants/colors.dart';
import 'package:blue_wing_wms/src/utils/helper/print_log.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../auth/models/user_model.dart';
import '../../providers/user_provider.dart';

class WaveScreen extends StatelessWidget {
  const WaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: Text("WAVE"),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.all_inclusive)),
              Tab(icon: Icon(Icons.alt_route_outlined)),
              Tab(icon: Icon(Icons.settings)),
            ])),
        body: TabBarView(
          children: [
            LDToList(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

////////////////////////////////////////////////
class LDToList extends StatefulWidget {
  const LDToList({super.key});

  @override
  State<LDToList> createState() => _LDToListState();
}

class _LDToListState extends State<LDToList> {
  WaveMethods _waveMethods = WaveMethods();

  final Stream<QuerySnapshot> _ltrStream = FirebaseFirestore.instance
      .collection('let_down_mode')
      .where('equipment', isEqualTo: 'wave_picker')
      .where('assigned_to', isEqualTo: 'nada')
      .snapshots();

  Color progressStatusColor(String val) {
    switch (val) {
      case 'ast':
        return Colors.amber;
      case 'completed':
        return ctAccentColor;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    User user = Provider.of<UserProvider>(context).getUser;

    return StreamBuilder<QuerySnapshot>(
      stream: _ltrStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            String preWave = data['pre_wave'].toString();
            var itemData = data;
            return ListTile(
              onTap: () {
                printWarning('onTap');
              },
              onLongPress: () {
                printWarning('onLongPress');
                _waveMethods.astLDR(user.username, user.uid, document.id);
              },
              tileColor: progressStatusColor(data['status']),
              title: Text(data['sku']),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "From: ${data['bulk_location']}     To: ${data['prime_location']}"),
                  Text("Pre Wave: $preWave"),
                  Text("equipment: ${data['equipment']}")
                ],
              ),
            );
          }).toList(),
        );
      },
    );
  }
}




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