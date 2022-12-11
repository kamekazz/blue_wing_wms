import 'package:blue_winged_wms/src/constants/image_strings.dart';
import 'package:blue_winged_wms/src/constants/sizes.dart';
import 'package:blue_winged_wms/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(myDefaultSize),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image(
            image: const AssetImage(myWelcomeScreenImage),
            height: height * 0.6,
          ),
          Column(
            children: [
              Text(
                myWelcomeTitle,
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                myWelcomeSubTitle,
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                    onPressed: () {}, child: Text(myLogin.toUpperCase())),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {}, child: Text(mySignup.toUpperCase())),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
