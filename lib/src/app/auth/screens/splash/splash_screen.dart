import 'package:blue_winged_wms/src/constants/colors.dart';
import 'package:blue_winged_wms/src/constants/image_strings.dart';
import 'package:blue_winged_wms/src/constants/sizes.dart';
import 'package:blue_winged_wms/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
              top: 0,
              left: 0,
              child: Image(
                image: AssetImage(mySplashTopIcon),
              )),
          Positioned(
              top: 80,
              left: myDefaultSize,
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
              )),
          const Positioned(
              bottom: 100,
              child: Image(
                image: AssetImage(mySplashImage),
              )),
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
