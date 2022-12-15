import 'package:blue_winged_wms/src/constants/colors.dart';
import 'package:blue_winged_wms/src/constants/image_strings.dart';
import 'package:blue_winged_wms/src/constants/sizes.dart';
import 'package:blue_winged_wms/src/constants/text_strings.dart';
import 'package:blue_winged_wms/src/widgets/fade_animation.dart/fade_in_animation.dart';
import 'package:blue_winged_wms/src/widgets/fade_animation.dart/fade_in_animation_controller.dart';
import 'package:blue_winged_wms/src/widgets/fade_animation.dart/fade_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final animationController = Get.put(FadeInController());
    animationController.find.startSplashAnimation();
    return Scaffold(
      body: Stack(
        children: [
          MyFadeAnimation(
              durationInMs: 1600,
              animatePosition: AnimatePosition(
                topBefore: 0,
                topAfter: 100,
                leftBefore: 400,
                leftAfter: 285,
              ),
              child: const Image(
                image: AssetImage(mySplashTopIcon),
              )),
          MyFadeAnimation(
              durationInMs: 1200,
              animatePosition: AnimatePosition(
                topBefore: 0,
                topAfter: 600,
                leftBefore: 400,
                leftAfter: 0,
              ),
              child: const Image(
                image: AssetImage(mySplashTopIcon),
              )),
          MyFadeAnimation(
            durationInMs: 1600,
            animatePosition: AnimatePosition(
              topBefore: 80,
              topAfter: 80,
              leftBefore: -100,
              leftAfter: 35,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ttAppName,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  ttAppTagLine,
                  style: Theme.of(context).textTheme.headline2,
                )
              ],
            ),
          ),
          MyFadeAnimation(
              durationInMs: 1600,
              animatePosition:
                  AnimatePosition(bottomBefore: 0, bottomAfter: 100),
              child: const Image(
                image: AssetImage(mySplashImage),
              )),
          MyFadeAnimation(
              durationInMs: 2000,
              animatePosition: AnimatePosition(
                  bottomBefore: 0,
                  bottomAfter: 60,
                  rightBefore: dtDefaultSize,
                  rightAfter: dtDefaultSize),
              child: Container(
                width: dtSplashContainerSize,
                height: dtSplashContainerSize,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: ctPrimaryColor),
              )),
          MyFadeAnimation(
              durationInMs: 1600,
              animatePosition: AnimatePosition(
                topBefore: 0,
                topAfter: 580,
                leftBefore: 400,
                leftAfter: 285,
              ),
              child: const Image(
                image: AssetImage(mySplashTopIcon),
              )),
        ],
      ),
    );
  }
}
