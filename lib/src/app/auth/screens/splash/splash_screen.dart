import 'package:blue_winged_wms/src/app/auth/controllers/splash_screen_controller.dart';
import 'package:blue_winged_wms/src/constants/colors.dart';
import 'package:blue_winged_wms/src/constants/image_strings.dart';
import 'package:blue_winged_wms/src/constants/sizes.dart';
import 'package:blue_winged_wms/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  final splashController = Get.put(SplashScreenController());

  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
                top: splashController.animate.value ? 0 : -30,
                left: splashController.animate.value ? 0 : -30,
                duration: const Duration(milliseconds: 1600),
                child: const Image(
                  image: AssetImage(mySplashTopIcon),
                )),
          ),
          Obx(
            () => AnimatedPositioned(
                top: 80,
                left: splashController.animate.value ? myDefaultSize : -220,
                duration: const Duration(milliseconds: 1600),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        myAppName,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        myAppTagLine,
                        style: Theme.of(context).textTheme.headline2,
                      )
                    ],
                  ),
                )),
          ),
          Obx(
            () => AnimatedPositioned(
                bottom: splashController.animate.value ? 100 : -100,
                duration: const Duration(milliseconds: 1600),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: const Image(
                    image: AssetImage(mySplashImage),
                  ),
                )),
          ),
          Positioned(
              bottom: 250,
              right: myDefaultSize + 200,
              child: Container(
                width: mySplashContainerSize * 1.30,
                height: mySplashContainerSize * 1.30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: myAccentColor),
              )),
          Positioned(
              bottom: 40,
              right: myDefaultSize,
              child: Container(
                width: mySplashContainerSize,
                height: mySplashContainerSize,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: myPrimaryColor),
              )),
        ],
      ),
    );
  }
}
