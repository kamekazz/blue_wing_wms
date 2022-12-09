import 'package:blue_winged_wms/src/utils/theme/appbar_theme.dart';
import 'package:blue_winged_wms/src/utils/theme/elevated_button_theme.dart';
import 'package:blue_winged_wms/src/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';

class MyAppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: MyTextTheme.lightTextTheme,
      appBarTheme: MyAppbarTheme.lightAppBarTheme,
      elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme);

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: MyTextTheme.darkTextTheme,
    appBarTheme: MyAppbarTheme.darkAppBarTheme,
  );
}
