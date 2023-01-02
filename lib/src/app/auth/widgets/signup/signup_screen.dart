import 'package:blue_wing_wms/src/app/auth/widgets/common_widget/auth_header_widget.dart';
import 'package:blue_wing_wms/src/app/auth/widgets/login/login_screen.dart';
import 'package:blue_wing_wms/src/app/auth/widgets/signup/signup_form_widget.dart';
import 'package:blue_wing_wms/src/constants/image_strings.dart';
import 'package:blue_wing_wms/src/constants/sizes.dart';
import 'package:blue_wing_wms/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  static const String routeName = '/SignupScreen';
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(dtDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* -- Section 1  [Images] --*/

                const AuthHeaderWidget(
                  image: astWelcomeScreenImage,
                  title: ttSignUpSubTitle,
                  subTitle: ttSignUpSubTitle,
                ),
                /* -- / end --*/

                /* -- Section 2  [Form] --*/
                const SignUpFormWidget(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('OR'),
                    const SizedBox(
                      height: dtFormHeight - 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Image(
                            image: AssetImage(astGoogleLogoImage),
                            width: 20.0,
                          ),
                          label: const Text(ttSignInWithGoogle)),
                    ),
                    const SizedBox(
                      height: dtFormHeight - 20,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, LoginScreen.routeName);
                        },
                        child: Text.rich(TextSpan(
                            text: ttAlreadyHaveAnAccount,
                            style: Theme.of(context).textTheme.bodyText1,
                            children: const [
                              TextSpan(
                                  text: ttLogin,
                                  style: TextStyle(color: Colors.blue))
                            ])))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
