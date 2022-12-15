import 'package:blue_winged_wms/src/constants/sizes.dart';
import 'package:blue_winged_wms/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: myFormHeight),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                label: Text(myFullName),
                prefixIcon: Icon(Icons.person_outline_rounded)),
          ),
          const SizedBox(
            height: myFormHeight - 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
                label: Text(myEmail),
                prefixIcon: Icon(Icons.person_outline_rounded)),
          ),
          const SizedBox(
            height: myFormHeight - 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
                label: Text(myPhoneNo),
                prefixIcon: Icon(Icons.person_outline_rounded)),
          ),
          const SizedBox(
            height: myFormHeight - 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
                label: Text(myPhoneNo),
                prefixIcon: Icon(Icons.person_outline_rounded)),
          ),
          const SizedBox(
            height: myFormHeight - 20,
          ),
          SizedBox(
            width: double.infinity,
            child:
                ElevatedButton(onPressed: () {}, child: const Text(mySignup)),
          )
        ],
      )),
    );
  }
}
