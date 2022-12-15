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
      padding: const EdgeInsets.symmetric(vertical: dtFormHeight),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                label: Text(ttFullName),
                prefixIcon: Icon(Icons.person_outline_rounded)),
          ),
          const SizedBox(
            height: dtFormHeight - 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
                label: Text(ttEmail),
                prefixIcon: Icon(Icons.person_outline_rounded)),
          ),
          const SizedBox(
            height: dtFormHeight - 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
                label: Text(ttPhoneNo),
                prefixIcon: Icon(Icons.person_outline_rounded)),
          ),
          const SizedBox(
            height: dtFormHeight - 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
                label: Text(ttPhoneNo),
                prefixIcon: Icon(Icons.person_outline_rounded)),
          ),
          const SizedBox(
            height: dtFormHeight - 20,
          ),
          SizedBox(
            width: double.infinity,
            child:
                ElevatedButton(onPressed: () {}, child: const Text(ttSignup)),
          )
        ],
      )),
    );
  }
}
