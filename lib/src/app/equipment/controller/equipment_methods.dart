// ignore_for_file: avoid_print
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class EquipmentMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  CollectionReference usersRef = FirebaseFirestore.instance.collection('users');

  Future<void> setUserEquipment(String val) {
    User currentUser = _auth.currentUser!;
    return usersRef
        .doc(currentUser.uid)
        .update({'equipment': val})
        .then((value) => print('user updated'))
        .catchError((error) => print('Failed to update user: $error'));
  }
}
