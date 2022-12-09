import 'package:blue_winged_wms/src/utils/theme/appbar_theme.dart';
import 'package:blue_winged_wms/src/utils/theme/elevated_button_theme.dart';
import 'package:blue_winged_wms/src/utils/theme/text_field_theme.dart';
import 'package:blue_winged_wms/src/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'outlined_button_theme.dart';

class MyAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: MyTextTheme.lightTextTheme,
    appBarTheme: MyAppbarTheme.lightAppBarTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MyTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: MyTextTheme.darkTextTheme,
    appBarTheme: MyAppbarTheme.darkAppBarTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MyTextFormFieldTheme.lightInputDecorationTheme,
  );
}
