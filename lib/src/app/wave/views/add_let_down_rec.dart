// ignore_for_file: no_leading_underscores_for_local_identifiers, unnecessary_brace_in_string_interps

import 'dart:math';

import 'package:blue_wing_wms/src/constants/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddLetDownRec extends StatefulWidget {
  const AddLetDownRec({super.key});

  @override
  State<AddLetDownRec> createState() => _AddLetDownRecState();
}

class _AddLetDownRecState extends State<AddLetDownRec> {
  late String title;
  late String des;

  var equipmentList = [
    'reach_truck',
    'wave_picker',
    'cherry_picker',
  ];

  String _generateRandomString(int len) {
    var r = Random();
    const _chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    return List.generate(len, (index) => _chars[r.nextInt(_chars.length)])
        .join();
  }

  String _generateRandomSKU(int len) {
    var r = Random();
    const _chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
    return List.generate(len, (index) => _chars[r.nextInt(_chars.length)])
        .join();
  }

  String _generateRandomPreLocation(int len) {
    var r = Random();
    const _chars = 'RZ';
    return List.generate(len, (index) => _chars[r.nextInt(_chars.length)])
        .join();
  }

  String _generateRandomBulkLocation(int len) {
    var r = Random();
    const _chars = 'PK';
    return List.generate(len, (index) => _chars[r.nextInt(_chars.length)])
        .join();
  }

  void addRandomLDR() async {
    // save to db
    CollectionReference ref =
        FirebaseFirestore.instance.collection('let_down_mode');
    Random _random = Random();
    int randomNUmber = _random.nextInt(500);
    int randomLineA = _random.nextInt(10);
    int randomLineB = _random.nextInt(10);
    int randomLineC = _random.nextInt(10);
    int randomLineD = _random.nextInt(10);
    int randomLineX = _random.nextInt(10);
    int randomLineY = _random.nextInt(10);
    String randomLave = _generateRandomString(1);

    int randomPreWave = _random.nextInt(randomNUmber);
    var data = {
      'sku': _generateRandomSKU(7),
      'pre_wave': randomPreWave,
      'max_qty': randomNUmber,
      'qty': (_random.nextInt(randomPreWave) * 0.70).round(),
      'zone': "ZONE${_random.nextInt(30)}",
      'prime_location':
          "${_generateRandomPreLocation(1)}${randomLineA}${randomLineB}0${randomLineC}${randomLineD}${randomLave}${randomLineX}${randomLineY}",
      'bulk_location':
          "${_generateRandomBulkLocation(1)}${randomLineA}${randomLineB}0${randomLineC}${randomLineD}${randomLave}${randomLineX}${randomLineY}",
      'equipment': equipmentList[_random.nextInt(equipmentList.length)],
      'orders': _random.nextInt(9),
      'priority': _random.nextInt(20),
      'status': 'ast',
      'assigned_to': 'nada',
      'assigned_to_id': 'nada',
      'created': DateTime.now(),
    };

    ref.add(data);
  }

  void createDBforLDR() {
    for (var i = 0; i < 40; i++) {
      addRandomLDR();
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(
          12.0,
        ),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.grey[700],
                  ),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(
                      horizontal: 25.0,
                      // vertical: 8.0,
                    ),
                  ),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 24.0,
                ),
              ),
              ElevatedButton(
                onPressed: createDBforLDR,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    ctAccentColor,
                  ),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(
                      horizontal: 25.0,
                      // vertical: 12.0,
                    ),
                  ),
                ),
                child: const Text(
                  "Save",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: "lato",
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          Form(
              child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration.collapsed(
                  hintText: "Title",
                ),
                style: const TextStyle(
                  fontSize: 32.0,
                  fontFamily: "lato",
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                onChanged: (_val) {
                  title = _val;
                },
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.75,
                padding: const EdgeInsets.only(top: 12.0),
                child: TextFormField(
                  decoration: const InputDecoration.collapsed(
                    hintText: "Note Description",
                  ),
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontFamily: "lato",
                    color: Colors.grey,
                  ),
                  onChanged: (_val) {
                    des = _val;
                  },
                  maxLines: 20,
                ),
              )
            ],
          ))
        ]),
      )),
    ));
  }
}
