// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_brace_in_string_interps, no_leading_underscores_for_local_identifiers
// ignore_for_file: prefer_final_fields
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:blue_wing_wms/src/app/wave/controller/wave_methods.dart';
import 'package:blue_wing_wms/src/constants/colors.dart';
import 'package:blue_wing_wms/src/utils/helper/print_log.dart';

import '../../auth/models/user_model.dart' as model;
import '../../providers/user_provider.dart';

class WaveMyList extends StatefulWidget {
  final String userData;
  const WaveMyList({
    Key? key,
    required this.userData,
  }) : super(key: key);

  @override
  State<WaveMyList> createState() => _WaveMyListState();
}

class _WaveMyListState extends State<WaveMyList> {
  WaveMethods _waveMethods = WaveMethods();

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
    model.User user = Provider.of<UserProvider>(context).getUser;
    Stream<QuerySnapshot> _ltrStream = FirebaseFirestore.instance
        .collection('let_down_mode')
        .where('equipment', isEqualTo: 'wave_picker')
        .where('assigned_to_id', isEqualTo: user.uid)
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
            String ltrSKU = data['sku'];
            String bulkLocation = data['bulk_location'];
            String primeLocation = data['prime_location'];
            String maxQty = data['max_qty'].toString();
            String qty = data['qty'].toString();

            return ListTile(
              onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: Text(
                    "SKU: ${ltrSKU}",
                    style: const TextStyle(color: Colors.blue),
                  ),
                  content: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InfoRow(title: 'FROM', val: bulkLocation),
                        InfoRow(title: 'MAX QTY', val: maxQty),
                        InfoRow(title: 'QTY', val: qty),
                        InfoRow(title: 'PRE-WAVE', val: preWave),
                        InfoRow(title: 'TO', val: primeLocation),
                      ]),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(color: ctDarkColor),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber),
                      ),
                      onPressed: () {
                        Navigator.pop(context, 'OK');
                        _waveMethods.reportIssue(document.id);
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        child: Text('issue'),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                      onPressed: () {
                        Navigator.pop(context, 'OK');
                        _waveMethods.completedLDR(
                            user.username,
                            user.uid,
                            document.id,
                            ltrSKU,
                            preWave,
                            primeLocation,
                            bulkLocation);
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        child: Text('Completed'),
                      ),
                    ),
                  ],
                ),
              ),
              onLongPress: () {
                printWarning('onLongPress');
                _waveMethods.astLDRtoPool(document.id);
              },
              tileColor: progressStatusColor(data['status']),
              title: Text(data['sku']),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "From: ${bulkLocation}     To: ${data['prime_location']}"),
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

class InfoRow extends StatelessWidget {
  const InfoRow({
    Key? key,
    required this.val,
    required this.title,
  }) : super(key: key);

  final String val;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${title}:",
          style: GoogleFonts.poppins(
              fontSize: 24.0, fontWeight: FontWeight.w700, color: Colors.blue),
        ),
        Text(
          val,
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    );
  }
}
