import 'package:flutter/material.dart';

import '../../app/auth/widgets/login/login_screen.dart';
import '../../app/auth/widgets/signup/signup_screen.dart';
import '../../app/auth/widgets/welcome/welcome_screen.dart';
import '../../app/options/views/option_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case WelcomeScreen.routeName:
      return MaterialPageRoute(builder: (_) => const WelcomeScreen());
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (_) => const LoginScreen());
    case SignupScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SignupScreen());
    case OptionScreen.routeName:
      return MaterialPageRoute(builder: (_) => const OptionScreen());
    default:
      return MaterialPageRoute(builder: (_) => const WelcomeScreen());
  }
}
