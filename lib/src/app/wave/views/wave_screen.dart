import 'package:blue_wing_wms/src/app/wave/views/add_let_down_rec.dart';
import 'package:blue_wing_wms/src/constants/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class WaveScreen extends StatelessWidget {
  const WaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const AddLetDownRec()),
          );
        },
        backgroundColor: ctPrimaryColor,
        child: const Icon(
          Icons.add,
          color: Colors.white70,
        ),
      ),
      appBar: AppBar(title: const Text('Wave Picker')),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
        // ignore: prefer_const_constructors
        child: LDToList(),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: ctDarkColor,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          hintText: 'Search',
          hintStyle: TextStyle(color: ctDarkColor),
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
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('ttb').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
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

            return ListTile(
              onLongPress: () {
                print('object');
              },
              tileColor: Colors.red,
              title: Text(data['title']),
              subtitle: Text(data['description']),
            );
          }).toList(),
        );
      },
    );
  }
}
