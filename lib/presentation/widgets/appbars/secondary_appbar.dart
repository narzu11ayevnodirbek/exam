import 'package:exam/core/utils/app_colors.dart';
import 'package:exam/core/utils/app_text_styles.dart';
import 'package:exam/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SecondaryAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String icon;
  const SecondaryAppbar({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.splashBackgroundColor,
      surfaceTintColor: AppColors.splashBackgroundColor,
      title: Padding(
        padding: EdgeInsets.only(left: SizeUtils.w(24)),
        child: Text(
          title,
          style: AppTextStyles.largeHeading,
        ),
      ),
      actions: [
        SvgPicture.asset(
          icon,
          width: SizeUtils.w(16),
          color: AppColors.primaryTextColor,
        ),
        SizedBox(width: SizeUtils.w(32)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
