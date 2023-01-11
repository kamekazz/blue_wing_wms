// ignore_for_file: avoid_print

import 'package:blue_wing_wms/src/utils/helper/print_log.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LDRoMethods {
  CollectionReference ldrRef =
      FirebaseFirestore.instance.collection('let_down_mode');
  CollectionReference ldrCompletedRef =
      FirebaseFirestore.instance.collection('let_down_completed');

  Future<void> astLDRtoMyList(String username, String userID, String docID) {
    return ldrRef
        .doc(docID)
        .update({
          'assigned_to': username,
          'assigned_to_id': userID,
        })
        .then((value) => print('astLDR updated'))
        .catchError((error) => print('Failed to update astLDR: $error'));
  }

  Future<void> astLDRtoPool(String docID) {
    return ldrRef
        .doc(docID)
        .update({
          'assigned_to': 'nada',
          'assigned_to_id': 'nada',
        })
        .then((value) => print('astLDR updated'))
        .catchError((error) => print('Failed to update astLDR: $error'));
  }

  Future<void> completedLDR(
      String username,
      String userID,
      String docID,
      String sku,
      String preWave,
      String primeLocation,
      String bulkLocation) async {
    var ldr = {
      'sku': sku,
      'pre_wave': preWave,
      'prime_location': primeLocation,
      'bulk_location': bulkLocation,
      'status': 'completed',
      'assigned_to': username,
      'assigned_to_id': userID,
      'created': DateTime.now(),
    };
    ldrCompletedRef.add(ldr).then((value) => ldrRef.doc(docID).delete());
  }

  Future<void> reportIssue(String docID) {
    return ldrRef
        .doc(docID)
        .update({
          'status': 'issue',
          'assigned_to': 'nada',
          'assigned_to_id': 'nada',
        })
        .then((value) => printWarning('reportIssue'))
        .catchError((error) => print('Failed to update reportIssue: $error'));
  }
}
