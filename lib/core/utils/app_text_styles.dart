import 'package:exam/core/utils/app_colors.dart';
import 'package:exam/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle largeHeading = TextStyle(
    fontFamily: "Inter",
    fontSize: SizeUtils.sp(32),
    fontWeight: FontWeight.w600,
    color: AppColors.primaryTextColor,
  );

  static TextStyle largeSubHeading = TextStyle(
    fontFamily: "Inter",
    fontSize: SizeUtils.sp(24),
    fontWeight: FontWeight.w600,
    color: AppColors.primaryTextColor,
  );

  static TextStyle newsTitle = TextStyle(
    fontFamily: "Inter",
    fontSize: SizeUtils.sp(18),
    fontWeight: FontWeight.w600,
    color: AppColors.primaryTextColor,
  );

  static TextStyle welcomeText = TextStyle(
    fontFamily: "Schibsted Grotesk",
    fontSize: SizeUtils.sp(18),
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryTextColor,
  );

  static TextStyle articleText = TextStyle(
    fontFamily: "Merriweather",
    fontSize: SizeUtils.sp(16),
    fontWeight: FontWeight.w400,
    color: AppColors.primaryTextColor,
  );

  static TextStyle descriptionText = TextStyle(
    fontFamily: "Inter",
    fontSize: SizeUtils.sp(12),
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryTextColor,
  );

  static TextStyle settingsText = TextStyle(
    fontFamily: "Inter",
    fontSize: SizeUtils.sp(14),
    fontWeight: FontWeight.w400,
    color: AppColors.primaryTextColor,
  );

  static TextStyle secondarySettingsText = TextStyle(
    fontFamily: "Inter",
    fontSize: SizeUtils.sp(14),
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryTextColor,
  );

  static TextStyle deleteAccountText = TextStyle(
    fontFamily: "Inter",
    fontSize: SizeUtils.sp(14),
    fontWeight: FontWeight.w400,
    color: AppColors.errorColor,
  );

  static TextStyle tabBarText = TextStyle(
    fontFamily: "Inter",
    fontSize: SizeUtils.sp(14),
    fontWeight: FontWeight.w600,
    color: AppColors.primaryTextColor,
  );

  static TextStyle statusText = TextStyle(
    fontFamily: "Inter",
    fontSize: SizeUtils.sp(14),
    fontWeight: FontWeight.w400,
    color: AppColors.userStatusColor,
  );

  static TextStyle statisticsText = TextStyle(
    fontFamily: "Inter",
    fontSize: SizeUtils.sp(14),
    fontWeight: FontWeight.w400,
    color: AppColors.infoTextColor,
  );

  static TextStyle bottomNavigationAppBarText = TextStyle(
    fontFamily: "Inter",
    fontSize: SizeUtils.sp(12),
    fontWeight: FontWeight.w400,
    color: AppColors.primaryColor,
  );

  static TextStyle weatherInfoText = TextStyle(
    fontFamily: "Inter",
    fontSize: SizeUtils.sp(14),
    fontWeight: FontWeight.w600,
    color: AppColors.secondaryTextColor,
  );

  static TextStyle seeMore = TextStyle(
    fontFamily: "Inter",
    fontSize: SizeUtils.sp(16),
    fontWeight: FontWeight.w600,
    color: AppColors.exploreButtonColor,
  );

  static TextStyle buttonText = TextStyle(
    fontFamily: "Inter",
    fontSize: SizeUtils.sp(20),
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor,
  );
  static TextStyle selectedIconText = TextStyle(
    fontFamily: "Inter",
    fontSize: SizeUtils.sp(12),
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor,
  );
}
