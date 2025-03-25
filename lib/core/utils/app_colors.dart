import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFFFFFFFF);
  static const Color splashBackgroundColor = Color(0xFFE9EEFA);
  static const Color bottomNavigationBarBackgroundColor = Color(0xCCFCE9EE);
  static const Color primaryAppBarColor = Color(0x1AE9EEFA);

  //! same as bottomNavigationAppBarElementsColor
  static const Color primaryTextColor = Color(0xFF231F20);
  static const Color secondaryTextColor = Color(0xFF6D6265);
  static const Color infoTextColor = Color(0xFF8A8184);
  static const Color exploreButtonColor = Color(0xFF2D5BD0);
  static const Color userStatusColor = Color(0xFF577CD9);
  static const Color errorColor = Color(0xFFE02607);
  static const Color lineColor = Color(0xFFE2E0E0);
  static const Color articleBottomNavigationBarBackgroundColor =
      Color(0xFFF3EBE9);

  ///Gradient colors
  static const LinearGradient linearGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF2249D4),
      Color(0xFFE9EEFA),
    ],
  );
}
