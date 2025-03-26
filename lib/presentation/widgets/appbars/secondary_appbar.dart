import 'package:exam/imports.dart';

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
        IconButton(
          onPressed: () {
            SoonDialog.showCustomDialog(
              context: context,
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
          icon: SvgPicture.asset(
            icon,
            width: SizeUtils.w(16),
            color: AppColors.primaryTextColor,
          ),
        ),
        SizedBox(width: SizeUtils.w(32)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
