import 'package:exam/imports.dart';

class ProfileAppbar extends StatelessWidget implements PreferredSize {
  final String title;
  final VoidCallback? onTap;
  const ProfileAppbar({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      leading: IconButton(
        onPressed: onTap,
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
