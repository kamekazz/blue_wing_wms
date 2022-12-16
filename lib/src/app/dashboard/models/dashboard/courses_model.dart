import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';

class DashboardTopCoursesModel {
  final String title;
  final String heading;
  final String subHeading;
  final String image;
  final VoidCallback? onPress;

  DashboardTopCoursesModel(
      this.title, this.heading, this.subHeading, this.image, this.onPress);

  static List<DashboardTopCoursesModel> list = [
    DashboardTopCoursesModel("Flutter Crash Course", "3 Sections",
        "Programming Languages", astTopCourseImage1, () {}),
    DashboardTopCoursesModel("HTML/ CSS Crash Course", "2 Sections",
        "35 Lessons", astTopCourseImage2, null),
    DashboardTopCoursesModel("Material Design Course", "6 Sections",
        "Programming & Design", astTopCourseImage1, () {}),
  ];
}
