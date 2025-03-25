import 'package:exam/core/utils/app_colors.dart';
import 'package:exam/core/utils/app_images.dart';
import 'package:exam/presentation/screens/splash/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void goToWelcomeScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (ctx) => WelcomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 3000)).then(
      (value) => goToWelcomeScreen(context),
    );
    return Scaffold(
      backgroundColor: AppColors.splashBackgroundColor,
      body: Center(
        child: SvgPicture.asset(AppImages.appLogo),
      ),
    );
  }
}
