// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blue_winged_wms/src/app/auth/widgets/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'package:blue_winged_wms/src/constants/sizes.dart';
import 'package:blue_winged_wms/src/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: ttEmail,
                  hintText: ttEmail,
                  border: OutlineInputBorder())),
          const SizedBox(
            height: dtFormHeight,
          ),
          TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  labelText: ttPassword,
                  hintText: ttPassword,
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.remove_red_eye_sharp)))),
          const SizedBox(
            height: dtFormHeight - 20,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                ForgetPasswordScreen.buildShowModalBottomSheet(context);
              },
              child: const Text(ttForgetPassword),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(ttLogin.toLowerCase()),
            ),
          )
        ],
      ),
    ));
  }
}
