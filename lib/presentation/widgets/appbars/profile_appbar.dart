import 'package:exam/core/utils/app_colors.dart';
import 'package:exam/core/utils/app_images.dart';
import 'package:exam/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileAppbar extends StatelessWidget implements PreferredSize {
  final String title;
  final VoidCallback? onTap;
  const ProfileAppbar({
    super.key,
    required this.title,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          AppImages.arrowBackIcon,
        ),
      ),
      title: Text(title, style: AppTextStyles.newsTitle),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget get child => throw UnimplementedError();
}
