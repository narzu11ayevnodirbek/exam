import 'package:exam/imports.dart';

class SoonDialog {
  static Future<void> showCustomDialog({
    required BuildContext context,
    // required String content,
    String button = "OK",
    VoidCallback? onPressed,
  }) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.primaryColor,
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              LottieBuilder.asset(
                "assets/lotties/soon.json",
                width: 150,
              ),
              SizedBox(height: 20),
              Text(
                "This service will be launched soon",
                textAlign: TextAlign.center,
                style: AppTextStyles.newsTitle,
              ),
              SizedBox(height: 20),
              FilledButton(
                onPressed: onPressed,
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(128),
                  ),
                  backgroundColor: AppColors.exploreButtonColor,
                ),
                child: Text(
                  button,
                  style: AppTextStyles.buttonText,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
