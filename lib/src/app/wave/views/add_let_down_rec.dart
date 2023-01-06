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

  void add() async {
    // save to db
    CollectionReference ref = FirebaseFirestore.instance.collection('ttb');

    var data = {
      'title': title,
      'description': des,
      'created': DateTime.now(),
    };

    ref.add(data);

    //

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
                onPressed: add,
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
