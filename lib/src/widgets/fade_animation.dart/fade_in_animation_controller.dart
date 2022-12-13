import 'package:get/get.dart';

import '../../app/auth/widgets/welcome/welcome_screen.dart';

class FadeInController extends GetxController {
  FadeInController get find => Get.find();
  RxBool animateTwoWay = false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animateTwoWay.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));
    animateTwoWay.value = false;
    Get.off(() => const WelcomeScreen(),
        duration: const Duration(milliseconds: 1000));
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animateTwoWay.value = true;
  }
}
