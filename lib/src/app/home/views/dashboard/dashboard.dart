import 'package:blue_wing_wms/src/app/home/views/dashboard/widgets/options.dart';
import 'package:blue_wing_wms/src/constants/colors.dart';
import 'package:blue_wing_wms/src/constants/image_strings.dart';
import 'package:blue_wing_wms/src/constants/sizes.dart';
import 'package:blue_wing_wms/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';

import '../../../../constants/text_strings.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Variables
    final txtTheme = Theme.of(context).textTheme;
    final isDark = MediaQuery.of(context).platformBrightness ==
        Brightness.dark; //Dark mode

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu, color: Colors.black),
          title: Text(
            ttAppName,
            style: Theme.of(context).textTheme.headline4,
          ),
          actions: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ctCardBgColor,
              ),
              child: IconButton(
                onPressed: () {
                  AuthenticationRepository.instance.logout();
                },
                icon: const Image(image: AssetImage(astUserProfileImage)),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: dtDashboardPadding),
                child: Text(ttDashboardOptions,
                    style: txtTheme.headline4?.apply(fontSizeFactor: 1.2)),
              ),
              DashboardOptions(),
            ],
          ),
        ),
      ),
    );
  }
}
