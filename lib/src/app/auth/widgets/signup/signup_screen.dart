import 'package:blue_winged_wms/src/app/auth/widgets/common_widget/auth_header_widget.dart';
import 'package:blue_winged_wms/src/app/auth/widgets/login/login_form.dart';
import 'package:blue_winged_wms/src/app/auth/widgets/signup/signup_form_widget.dart';
import 'package:blue_winged_wms/src/constants/image_strings.dart';
import 'package:blue_winged_wms/src/constants/sizes.dart';
import 'package:blue_winged_wms/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(myDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* -- Section 1  [Images] --*/

                const LoginHeaderWidget(
                  image: myWelcomeScreenImage,
                  title: mySignUpSubTitle,
                  subTitle: mySignUpSubTitle,
                ),
                /* -- / end --*/

                /* -- Section 2  [Form] --*/
                SignUpFormWidget(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('OR'),
                    const SizedBox(
                      height: myFormHeight - 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Image(
                            image: AssetImage(myGoogleLogoImage),
                            width: 20.0,
                          ),
                          label: const Text(mySignInWithGoogle)),
                    ),
                    const SizedBox(
                      height: myFormHeight - 20,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text.rich(TextSpan(
                            text: myAlreadyHaveAnAccount,
                            style: Theme.of(context).textTheme.bodyText1,
                            children: const [
                              TextSpan(
                                  text: myLogin,
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