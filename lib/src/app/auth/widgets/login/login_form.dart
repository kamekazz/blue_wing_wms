// ignore_for_file: public_member_api_docs, sort_constructors_first, no_leading_underscores_for_local_identifiers

import 'package:blue_wing_wms/src/app/auth/widgets/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';
import 'package:blue_wing_wms/src/app/auth/widgets/signup/signup_screen.dart';

import 'package:flutter/material.dart';

import 'package:blue_wing_wms/src/constants/sizes.dart';
import 'package:blue_wing_wms/src/constants/text_strings.dart';

import '../../../../utils/helper/showSnackbar.dart';
import '../../../options/views/option_screen.dart';
import '../../controllers/auth_methods.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _signInFormKey = GlobalKey<FormState>();
  // final AuthService authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void handelSignInUser() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);
    if (res == 'success') {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const OptionScreen(),
          ),
          (route) => false);

      setState(() {
        _isLoading = false;
      });
    } else {
      setState(() {
        _isLoading = false;
      });
      // ignore: use_build_context_synchronously
      showSnackBar(context, res);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _signInFormKey,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  // validator: (value) {},
                  controller: _emailController,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      labelText: ttEmail,
                      hintText: ttEmail,
                      border: OutlineInputBorder())),
              const SizedBox(
                height: dtFormHeight,
              ),
              TextFormField(
                  obscureText: true,
                  // validator: (value) {},
                  controller: _passwordController,
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
                  onPressed: () {
                    if (_signInFormKey.currentState!.validate()) {
                      if (_isLoading == false) {
                        handelSignInUser();
                      }
                    }
                  },
                  child: _isLoading
                      ? const Text("is loading")
                      : Text(ttLogin.toUpperCase()),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignupScreen.routeName);
                  },
                  child: const Text("Create new user"),
                ),
              ),
            ],
          ),
        ));
  }
}
