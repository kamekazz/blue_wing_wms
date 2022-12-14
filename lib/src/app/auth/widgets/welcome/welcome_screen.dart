import 'package:blue_winged_wms/src/app/auth/widgets/login/login_screen.dart';
import 'package:blue_winged_wms/src/constants/colors.dart';
import 'package:blue_winged_wms/src/constants/image_strings.dart';
import 'package:blue_winged_wms/src/constants/sizes.dart';
import 'package:blue_winged_wms/src/constants/text_strings.dart';
import 'package:blue_winged_wms/src/widgets/fade_animation.dart/fade_in_animation.dart';
import 'package:blue_winged_wms/src/widgets/fade_animation.dart/fade_in_animation_controller.dart';
import 'package:blue_winged_wms/src/widgets/fade_animation.dart/fade_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInController());
    controller.animationIn();

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? mySecondaryColor : Colors.amber,
        body: Stack(
          children: [
            MyFadeAnimation(
              isTwoWayAnimation: false,
              durationInMs: 1200,
              animatePosition: AnimatePosition(
                bottomAfter: 0,
                bottomBefore: -100,
                leftBefore: 0,
                leftAfter: 0,
                topAfter: 0,
                topBefore: 0,
                rightAfter: 0,
                rightBefore: 0,
              ),
              child: Container(
                padding: const EdgeInsets.all(myDefaultSize),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Hero(
                        tag: 'welcome-image-tag',
                        child: Image(
                            image: const AssetImage(myWelcomeScreenImage),
                            height: height * 0.6)),
                    Column(
                      children: [
                        Text(myWelcomeTitle,
                            style: Theme.of(context).textTheme.headline2),
                        Text(myWelcomeSubTitle,
                            style: Theme.of(context).textTheme.bodyText1,
                            textAlign: TextAlign.center),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {
                              Get.to(() => const LoginScreen());
                            },
                            child: Text(myLogin.toUpperCase()),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  isDarkMode ? Colors.amber : mySecondaryColor,
                            ),
                            child: Text(mySignup.toUpperCase()),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
