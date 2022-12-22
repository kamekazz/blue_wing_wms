import 'package:flutter/material.dart';
import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class DashboardBanners extends StatelessWidget {
  const DashboardBanners({
    Key? key,
    required this.txtTheme,
    required this.isDark,
  }) : super(key: key);

  final TextTheme txtTheme;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //1st banner
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //For Dark Color
              color: isDark ? ctSecondaryColor : ctCardBgColor,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Flexible(child: Image(image: AssetImage(astBookmarkIcon))),
                    Flexible(child: Image(image: AssetImage(astBannerImage1))),
                  ],
                ),
                const SizedBox(height: 25),
                Text(ttDashboardBannerTitle1,
                    style: txtTheme.headline4,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis),
                Text(ttDashboardBannerSubTitle,
                    style: txtTheme.bodyText2,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ),
        const SizedBox(width: dtDashboardCardPadding),
        //2nd Banner
        Expanded(
          child: Column(
            children: [
              //Card
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //For Dark Color
                  color: isDark ? ctSecondaryColor : ctCardBgColor,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Flexible(
                            child: Image(image: AssetImage(astBookmarkIcon))),
                        Flexible(
                            child: Image(image: AssetImage(astBannerImage2))),
                      ],
                    ),
                    Text(ttDashboardBannerTitle2,
                        style: txtTheme.headline4,
                        overflow: TextOverflow.ellipsis),
                    Text(ttDashboardBannerSubTitle,
                        style: txtTheme.bodyText2,
                        overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text(ttDashboardButton)),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
