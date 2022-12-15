import 'package:blue_winged_wms/src/app/auth/widgets/common_widget/auth_header_widget.dart';
import 'package:blue_winged_wms/src/constants/colors.dart';
import 'package:blue_winged_wms/src/constants/image_strings.dart';
import 'package:blue_winged_wms/src/constants/sizes.dart';
import 'package:blue_winged_wms/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Just In-case if you want to replace the Image Color for Dark Theme
    final brightness = MediaQuery.of(context).platformBrightness;
    final bool isDark = brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(myDefaultSize),
            child: Column(
              children: [
                const SizedBox(height: myDefaultSize * 4),
                const LoginHeaderWidget(
                  image: myForgetPasswordImage,
                  title: myForgetPassword,
                  subTitle: myForgetPasswordSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: myFormHeight),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text(myEmail),
                          hintText: myEmail,
                          prefixIcon: Icon(Icons.mail_outline_rounded),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text(myNext)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
