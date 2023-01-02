// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:blue_wing_wms/src/constants/sizes.dart';
import 'package:blue_wing_wms/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignUpFormWidget extends StatefulWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpFormWidget> createState() => _SignUpFormWidgetState();
}

class _SignUpFormWidgetState extends State<SignUpFormWidget> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void signUp() {}
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: dtFormHeight),
      child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _fullNameController,
                decoration: const InputDecoration(
                    label: Text(ttFullName),
                    prefixIcon: Icon(Icons.person_outline_rounded)),
              ),
              const SizedBox(
                height: dtFormHeight - 20,
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                    label: Text(ttEmail),
                    prefixIcon: Icon(Icons.email_outlined)),
              ),
              const SizedBox(
                height: dtFormHeight - 20,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                    label: Text(ttPassword),
                    prefixIcon: Icon(Icons.fingerprint)),
              ),
              const SizedBox(
                height: dtFormHeight - 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        signUp();
                      }
                    },
                    child: Text(ttSignup.toUpperCase())),
              )
            ],
          )),
    );
  }
}
