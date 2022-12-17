import 'package:blue_wing_wms/src/repository/authentication_repository/authentication_repository.dart';
import 'package:blue_wing_wms/src/utils/helper/print_log.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //textfield controller to get data from TextFields

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  void registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }
}
