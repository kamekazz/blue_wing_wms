import 'package:blue_winged_wms/src/app/auth/controllers/on_boarding_controller.dart';
import 'package:blue_winged_wms/src/app/auth/models/on_boarding_model.dart';
import 'package:blue_winged_wms/src/constants/colors.dart';

import 'package:blue_winged_wms/src/constants/sizes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final obController = OnboardingController();

    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        LiquidSwipe(
          pages: obController.pages,
          enableSideReveal: true,
          liquidController: obController.controller,
          onPageChangeCallback: obController.onPageChangedCallback,
          slideIconWidget: const Icon(Icons.arrow_back_ios),
          waveType: WaveType.circularReveal,
        ),
        Positioned(
            bottom: 60,
            child: OutlinedButton(
              onPressed: () {
                obController.skipOnBoarding();
              },
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black26),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20)),
              child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: myDarkColor, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )),
            )),
        Positioned(
            top: 20,
            left: 0,
            child: TextButton(
              onPressed: () {
                obController.skipOnBoarding();
              },
              child: const Text(
                'Ship',
                style: TextStyle(color: Colors.grey),
              ),
            )),
        Obx(() => Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              activeIndex: obController.currentPage.value,
              count: 3,
              effect: const WormEffect(
                  activeDotColor: Color(0xff272727), dotHeight: 5.0),
            )))
      ]),
    );
  }
}

class LiquidPage extends StatelessWidget {
  const LiquidPage({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(dtDefaultSize),
      color: model.bgColor,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Image(
          image: AssetImage(model.image),
          height: size.height * 0.40,
        ),
        Column(
          children: [
            Text(model.title, style: Theme.of(context).textTheme.headline1),
            Text(
              model.subTitle,
              style: Theme.of(context).textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
        Text(model.counterText, style: Theme.of(context).textTheme.headline2),
        const SizedBox(
          height: 80,
        )
      ]),
    );
  }
}
