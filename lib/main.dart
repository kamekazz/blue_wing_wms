// import 'package:blue_wing_wms/firebase_options.dart';
// import 'package:blue_wing_wms/src/repository/authentication_repository/authentication_repository.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:get/get.dart';
import 'package:blue_wing_wms/src/app/auth/widgets/welcome/welcome_screen.dart';
import 'package:blue_wing_wms/src/utils/router/router.dart';
import 'package:blue_wing_wms/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
  //   (value) => Get.put(AuthenticationRepository()),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blue Winged',
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const WelcomeScreen(),
      // home: DashboardScreen(),
    );
  }
}
