import 'package:cloud_firestore/cloud_firestore.dart';

class WaveMethods {
  CollectionReference ldrRef =
      FirebaseFirestore.instance.collection('let_down_mode');

  Future<void> astLDR(String username, String userID, String docID) {
    return ldrRef
        .doc(docID)
        .update({
          'assigned_to': username,
          'assigned_to_id': userID,
        })
        .then((value) => print('astLDR updated'))
        .catchError((error) => print('Failed to update astLDR: $error'));
  }
}
