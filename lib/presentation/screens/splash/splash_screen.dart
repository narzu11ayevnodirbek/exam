import 'package:exam/imports.dart';

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
    Future.delayed(Duration(milliseconds: 800)).then(
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
