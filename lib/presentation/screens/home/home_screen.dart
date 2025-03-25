import 'package:exam/core/utils/app_colors.dart';
import 'package:exam/core/utils/app_images.dart';
import 'package:exam/core/utils/app_text_styles.dart';
import 'package:exam/core/utils/size_utils.dart';
import 'package:exam/presentation/widgets/containers/home_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: AppColors.splashBackgroundColor,
        surfaceTintColor: AppColors.splashBackgroundColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Morning,\nTrung",
                  style: AppTextStyles.secondarySettingsText,
                ),
                Text(
                  "Sun 9 April, 2023",
                  style: AppTextStyles.newsTitle,
                ),
              ],
            ),
          ),
        ),
        actions: [
          SvgPicture.asset(
            AppImages.sunIcon,
            width: 32,
          ),
          SizedBox(width: 8),
          Text(
            "Sunny 32°C",
            style: AppTextStyles.weatherInfoText,
          ),
          SizedBox(width: 32),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: SingleChildScrollView(
          clipBehavior: Clip.none,
          child: Column(
            children: [
              SizedBox(height: 24),
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 24,
                  children: [
                    HomeItems(
                        image: AppImages.home1Image,
                        title:
                            "Experience of the Serenity of Japan's religious"),
                    HomeItems(
                        image: AppImages.home2Image,
                        title: "Discovering the Magic of Paris"),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Just For You",
                    style: AppTextStyles.largeSubHeading,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "See More",
                      style: AppTextStyles.seeMore,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 24,
                  children: [
                    HomeItems(
                        image: AppImages.home3Image,
                        title:
                            "Experience of the Serenity of Japan's religious"),
                    HomeItems(
                        image: AppImages.home4Image,
                        title: "Discovering the Magic of Paris"),
                  ],
                ),
              ),
              SizedBox(height: SizeUtils.h(100))
            ],
          ),
        ),
      ),
    );
  }
}
