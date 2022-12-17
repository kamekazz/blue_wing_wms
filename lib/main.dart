import 'package:blue_wing_wms/firebase_options.dart';
import 'package:blue_wing_wms/src/repository/authentication_repository/authentication_repository.dart';
import 'package:blue_wing_wms/src/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/app/auth/widgets/splash/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
    (value) => Get.put(AuthenticationRepository()),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Blue Winged',
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,

      // defaultTransition: Transition.rightToLeftWithFade,
      // transitionDuration: const Duration(milliseconds: 500),

      home: const CircularProgressIndicator(),
    );
  }
}
