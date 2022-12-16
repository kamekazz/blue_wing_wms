import 'package:blue_wing_wms/src/constants/colors.dart';
import 'package:blue_wing_wms/src/constants/image_strings.dart';
import 'package:blue_wing_wms/src/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../constants/text_strings.dart';
import 'widgets/banners.dart';
import 'widgets/categories.dart';
import 'widgets/search.dart';
import 'widgets/top_courses.dart';

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
                onPressed: () {},
                icon: const Image(image: AssetImage(astUserProfileImage)),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Heading
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(ttDashboardTitle, style: txtTheme.bodyText2),
                    Text(ttDashboardHeading, style: txtTheme.headline2),
                    const SizedBox(height: dtDashboardPadding),
                  ],
                ),
              ),

              // Search Box
              Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: dtDashboardPadding),
                  child: DashboardSearchBox(txtTheme: txtTheme)),
              const SizedBox(height: dtDashboardPadding),

              // Categories
              DashboardCategories(txtTheme: txtTheme),
              const SizedBox(height: dtDashboardPadding),

              //Banners
              Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: dtDashboardPadding),
                  child: DashboardBanners(txtTheme: txtTheme, isDark: isDark)),
              const SizedBox(height: dtDashboardPadding),

              //Top Course

              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: dtDashboardPadding),
                child: Text(ttDashboardTopCourses,
                    style: txtTheme.headline4?.apply(fontSizeFactor: 1.2)),
              ),
              DashboardTopCourses(txtTheme: txtTheme, isDark: isDark)
            ],
          ),
        ),
      ),
    );
  }
}
