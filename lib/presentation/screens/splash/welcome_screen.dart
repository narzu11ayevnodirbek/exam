import 'package:exam/core/utils/app_colors.dart';
import 'package:exam/core/utils/app_images.dart';
import 'package:exam/core/utils/app_text_styles.dart';
import 'package:exam/core/utils/size_utils.dart';
import 'package:exam/presentation/screens/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: SizeUtils.h(538),
              decoration: BoxDecoration(
                gradient: AppColors.linearGradient,
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    AppImages.welcomeImage,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 52, bottom: 0, left: 32, right: 32),
              height: SizeUtils.h(421),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Get The Latest News And Updates",
                    style: AppTextStyles.largeHeading,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "From Politics to Entertainment: Your One-Stop Source for Comprehensive Coverage of the Latest News and Developments Across the Glob will be right on your hand.",
                    style: AppTextStyles.welcomeText,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  FilledButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AppLayout(),
                        ),
                      );
                    },
                    style: FilledButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(128),
                      ),
                      backgroundColor: AppColors.exploreButtonColor,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 8,
                      children: [
                        Text("Explore"),
                        SvgPicture.asset(
                          AppImages.arrowForwardIcon,
                          color: AppColors.primaryColor,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
