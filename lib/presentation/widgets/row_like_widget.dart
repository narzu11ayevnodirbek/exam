import 'package:exam/imports.dart';

class RowLikeWidget extends StatelessWidget {
  final String title;
  final String? info;
  final VoidCallback? onTap;
  const RowLikeWidget({
    super.key,
    required this.title,
    this.onTap,
    this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11, horizontal: SizeUtils.w(32)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: title == "Delete Account"
                    ? AppTextStyles.deleteAccountText
                    : AppTextStyles.settingsText,
              ),
              if (info != null)
                Text(
                  "$info",
                  style: AppTextStyles.secondarySettingsText,
                )
            ],
          ),
          InkWell(
            onTap: onTap,
            child: SvgPicture.asset(
              AppImages.arrowForwardIosIcon,
              width: SizeUtils.w(8),
            ),
          )
        ],
      ),
    );
  }
}
