// import 'package:get/get.dart';
import 'package:blue_wing_wms/firebase_options.dart';
import 'package:blue_wing_wms/src/app/providers/user_provider.dart';

import 'package:firebase_auth/firebase_auth.dart';
// import 'package:blue_wing_wms/src/repository/authentication_repository/authentication_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:blue_wing_wms/src/app/auth/widgets/welcome/welcome_screen.dart';
import 'package:blue_wing_wms/src/utils/router/router.dart';
import 'package:blue_wing_wms/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/app/options/views/option_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Blue Winged',
        theme: MyAppTheme.lightTheme,
        darkTheme: MyAppTheme.darkTheme,
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) => generateRoute(settings),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              if (snapshot.hasData) {
                return const OptionScreen();
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('${snapshot.error}'),
                );
              }
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return const WelcomeScreen();
          },
        ),
        // home: DashboardScreen(),
      ),
    );
  }
}
