// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: unused_field

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:blue_wing_wms/src/app/LDR/controller/ldr_methods.dart';
import 'package:blue_wing_wms/src/constants/colors.dart';
import 'package:blue_wing_wms/src/utils/helper/print_log.dart';

import '../../auth/models/user_model.dart';
import '../../providers/user_provider.dart';

class PoolTab extends StatelessWidget {
  PoolTab({
    Key? key,
    required this.queryEquipment,
  }) : super(key: key);

  final LDRoMethods _ldRoMethods = LDRoMethods();
  final String queryEquipment;
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
    Stream<QuerySnapshot> _ltrStream = FirebaseFirestore.instance
        .collection('let_down_mode')
        .where('equipment', isEqualTo: queryEquipment)
        .where('assigned_to', isEqualTo: 'nada')
        .snapshots();

    return StreamBuilder<QuerySnapshot>(
      stream: _ltrStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            String preWave = data['pre_wave'].toString();
            return ListTile(
              onTap: () {
                printWarning('onTap');
              },
              onLongPress: () {
                printWarning('onLongPress');
                _ldRoMethods.astLDRtoMyList(
                    user.username, user.uid, document.id);
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
