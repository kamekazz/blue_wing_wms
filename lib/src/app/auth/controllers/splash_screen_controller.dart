import 'package:blue_winged_wms/src/app/auth/screens/on_boarding/on_boarding_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  SplashScreenController get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(seconds: 3));
    Get.off(() => const OnBoardingScreen());
  }
}
