import 'package:blue_wing_wms/src/app/auth/models/on_boarding_model.dart';
import 'package:blue_wing_wms/src/app/auth/widgets/on_boarding/on_boarding_screen.dart';
import 'package:blue_wing_wms/src/app/auth/widgets/welcome/welcome_screen.dart';
import 'package:blue_wing_wms/src/constants/image_strings.dart';
import 'package:blue_wing_wms/src/constants/text_strings.dart';
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
            image: astOnBoardingImage1,
            title: ttOnBoardingTitle1,
            subTitle: ttOnBoardingSubTitle1,
            counterText: ttOnBoardingCounter1,
            bgColor: ctOnBoardingPage1Color)),
    LiquidPage(
        model: OnBoardingModel(
            image: astOnBoardingImage2,
            title: ttOnBoardingTitle2,
            subTitle: ttOnBoardingSubTitle2,
            counterText: ttOnBoardingCounter2,
            bgColor: ctOnBoardingPage2Color)),
    LiquidPage(
        model: OnBoardingModel(
            image: astOnBoardingImage3,
            title: ttOnBoardingTitle3,
            subTitle: ttOnBoardingSubTitle3,
            counterText: ttOnBoardingCounter3,
            bgColor: ctOnBoardingPage3Color)),
  ];
}
