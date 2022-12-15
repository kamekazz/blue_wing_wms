import 'package:blue_wing_wms/src/widgets/fade_animation.dart/fade_in_animation_controller.dart';
import 'package:blue_wing_wms/src/widgets/fade_animation.dart/fade_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFadeAnimation extends StatelessWidget {
  MyFadeAnimation({
    Key? key,
    required this.durationInMs,
    this.animatePosition,
    this.isTwoWayAnimation = true,
    required this.child,
  }) : super(key: key);

  final bool isTwoWayAnimation;
  final animationController = Get.put(FadeInController());
  final int durationInMs;
  final AnimatePosition? animatePosition;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return isTwoWayAnimation
        ? Obx(
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
                  duration: Duration(milliseconds: durationInMs),
                  opacity: animationController.animateTwoWay.value ? 1 : 0,
                  child: child,
                )),
          )
        : Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: durationInMs),
              top: animationController.animateSingle.value
                  ? animatePosition!.topAfter
                  : animatePosition!.topBefore,
              left: animationController.animateSingle.value
                  ? animatePosition!.leftAfter
                  : animatePosition!.leftBefore,
              bottom: animationController.animateSingle.value
                  ? animatePosition!.bottomAfter
                  : animatePosition!.bottomBefore,
              right: animationController.animateSingle.value
                  ? animatePosition!.rightAfter
                  : animatePosition!.rightBefore,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: durationInMs),
                opacity: animationController.animateSingle.value ? 1 : 0,
                child: child,
              ),
            ),
          );
  }
}
