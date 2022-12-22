import 'package:blue_wing_wms/src/app/auth/widgets/login/login_form.dart';
import 'package:blue_wing_wms/src/app/auth/widgets/common_widget/auth_header_widget.dart';

import 'package:blue_wing_wms/src/constants/image_strings.dart';
import 'package:blue_wing_wms/src/constants/sizes.dart';
import 'package:blue_wing_wms/src/constants/text_strings.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(dtDefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AuthHeaderWidget(
                    image: astWelcomeScreenImage,
                    title: ttLoginTitle,
                    subTitle: ttLoginSubTitle,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                  Container(
                      constraints: const BoxConstraints(maxWidth: 400),
                      child: const LoginForm()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
