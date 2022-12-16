import 'package:flutter/material.dart';
import '../../../../../constants/colors.dart';
import '../../../../../constants/text_strings.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    Key? key,
    required this.isDark,
  }) : super(key: key);

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      leading: Icon(Icons.menu, color: isDark ? ctWhiteColor : ctDarkColor),
      title: Text(ttAppName, style: Theme.of(context).textTheme.headline4),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isDark ? ctSecondaryColor : ctCardBgColor,
          ),
          // child: IconButton(
          // onPressed: () => Get.to(() => const ProfileScreen()),
          // onPressed: () => AuthenticationRepository.instance.logout(),
          // icon: const Image(image: AssetImage(tUserProfileImage)),
          // ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
