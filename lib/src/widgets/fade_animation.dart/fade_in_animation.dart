import 'package:blue_winged_wms/src/constants/image_strings.dart';
import 'package:blue_winged_wms/src/widgets/fade_animation.dart/fade_in_animation_controller.dart';
import 'package:blue_winged_wms/src/widgets/fade_animation.dart/fade_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFadeAnimation extends StatelessWidget {
  MyFadeAnimation({
    Key? key,
    required this.durationInMs,
    this.animatePosition,
    required this.child,
  }) : super(key: key);

  final animationController = Get.put(FadeInController());
  final int durationInMs;
  final AnimatePosition? animatePosition;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
          duration: const Duration(milliseconds: 1600),
          top: animationController.animateTwoWay.value
              ? animatePosition!.topAfter
              : animatePosition!.topBefore,
          left: animationController.animateTwoWay.value
              ? animatePosition!.leftAfter
              : animatePosition!.leftBefore,
          bottom: animationController.animateTwoWay.value
              ? animatePosition!.bottomAfter
              : animatePosition!.bottomBefore,
          right: animationController.animateTwoWay.value
              ? animatePosition!.rightAfter
              : animatePosition!.rightBefore,
          child: AnimatedOpacity(
            duration: Duration(microseconds: durationInMs),
            opacity: animationController.animateTwoWay.value ? 1 : 0,
            child: child,
          )),
    );
  }
}
