import 'package:exam/imports.dart';

class BottomNavigationBarIcon extends StatelessWidget {
  final int index;
  final int currentIndex;
  final String title;
  final String icon;
  final VoidCallback onTap;

  const BottomNavigationBarIcon({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = index == currentIndex;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryTextColor : Colors.transparent,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              height: SizeUtils.h(24),
              color: isSelected
                  ? AppColors.primaryColor
                  : AppColors.primaryTextColor,
            ),
            if (isSelected) ...[
              const SizedBox(width: 7),
              Text(title, style: AppTextStyles.selectedIconText),
            ],
          ],
        ),
      ),
    );
  }
}
