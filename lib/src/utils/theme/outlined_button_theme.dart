import 'package:blue_winged_wms/src/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:blue_winged_wms/src/constants/colors.dart';

/* -- Light & Dark Outlined Button Themes -- */
class MyOutlinedButtonTheme {
  MyOutlinedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: mySecondaryColor,
      side: const BorderSide(color: mySecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: myButtonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: myWhiteColor,
      side: const BorderSide(color: myWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: myButtonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );
}
