import 'package:blue_winged_wms/src/app/auth/models/on_boarding_model.dart';
import 'package:blue_winged_wms/src/app/auth/screens/on_boarding/on_boarding_screen.dart';
import 'package:blue_winged_wms/src/app/auth/screens/welcome/welcome.dart';
import 'package:blue_winged_wms/src/constants/image_strings.dart';
import 'package:blue_winged_wms/src/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../constants/colors.dart';

class OnboardingController extends GetxController {
  //Variables
  final controller = LiquidController();
  RxInt currentPage = 0.obs;
  int mainIndex = 2;

  skip() => controller.jumpToPage(page: 2);
  animateToNextSlide() {
    controller.animateToPage(page: controller.currentPage + 1);
  }

  onPageChangedCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
    if (currentPage.value == 1) {
      mainIndex = mainIndex - 1;
    }
    if (currentPage.value == 0 && mainIndex <= 0) {
      Get.off(() => const WelcomeScreen());
    }
  }

  skipOnBoarding() {
    Get.off(() => const WelcomeScreen());
  }

  final pages = [
    LiquidPage(
        model: OnBoardingModel(
            image: myOnBoardingImage1,
            title: myOnBoardingTitle1,
            subTitle: myOnBoardingSubTitle1,
            counterText: myOnBoardingCounter1,
            bgColor: myOnBoardingPage1Color)),
    LiquidPage(
        model: OnBoardingModel(
            image: myOnBoardingImage2,
            title: myOnBoardingTitle2,
            subTitle: myOnBoardingSubTitle2,
            counterText: myOnBoardingCounter2,
            bgColor: myOnBoardingPage2Color)),
    LiquidPage(
        model: OnBoardingModel(
            image: myOnBoardingImage3,
            title: myOnBoardingTitle3,
            subTitle: myOnBoardingSubTitle3,
            counterText: myOnBoardingCounter3,
            bgColor: myOnBoardingPage3Color)),
  ];
}