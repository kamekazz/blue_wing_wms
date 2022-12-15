import 'package:blue_wing_wms/src/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:blue_wing_wms/src/constants/colors.dart';

/* -- Light & Dark Elevated Button Themes -- */
class MyElevatedButtonTheme {
  MyElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ctWhiteColor,
      backgroundColor: ctSecondaryColor,
      side: const BorderSide(color: ctSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: dtButtonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );

  // /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: ctWhiteColor,
      foregroundColor: ctSecondaryColor,
      side: const BorderSide(color: ctWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: dtButtonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );
}
