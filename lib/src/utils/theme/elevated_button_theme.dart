import 'package:flutter/material.dart';
import 'package:blue_winged_wms/src/constants/colors.dart';

/* -- Light & Dark Elevated Button Themes -- */
class MyElevatedButtonTheme {
  MyElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        // elevation: 0,
        // foregroundColor: myWhiteColor,
        // backgroundColor: mySecondaryColor,
        // side: const BorderSide(color: mySecondaryColor),
        // padding: const EdgeInsets.symmetric(vertical: myButtonHeight),
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
  );

  // /* -- Dark Theme -- */
  // static final darkElevatedButtonTheme = ElevatedButtonThemeData(
  //   style: ElevatedButton.styleFrom(
  //     elevation: 0,
  //     backgroundColor: tWhiteColor,
  //     foregroundColor: tSecondaryColor,
  //     side: const BorderSide(color: tWhiteColor),
  //     padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
  //   ),
  // );
}
