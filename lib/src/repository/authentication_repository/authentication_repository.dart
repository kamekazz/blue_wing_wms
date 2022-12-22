//NOT INCLUDED
import 'package:blue_wing_wms/src/app/auth/widgets/welcome/welcome_screen.dart';
import 'package:blue_wing_wms/src/app/home/widgets/dashboard/dashboard.dart';
import 'package:blue_wing_wms/src/repository/authentication_repository/authentication_exceptions.dart';
import 'package:blue_wing_wms/src/utils/helper/print_log.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const DashboardScreen());
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const DashboardScreen())
          : Get.offAll(() => const WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignupWithEmailFailure.code(e.code);
      printWarning('FIREBASE AUTH EXCEPTION ${ex.message}');
    } catch (_) {
      const ex = SignupWithEmailFailure();
      printWarning('EXCEPTION ${ex.message}');
      throw ex;
    }
  }

  Future<void> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
    } catch (_) {}
  }

  Future<void> logout() async => await _auth.signOut();
}
