import 'package:exam/core/utils/app_text_styles.dart';
import 'package:exam/core/utils/size_utils.dart';
import 'package:exam/presentation/screens/home/article_screen.dart';
import 'package:flutter/material.dart';

class HomeItems extends StatelessWidget {
  final String image;
  final String title;

  const HomeItems({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleScreen(),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              width: SizeUtils.w(269),
              height: SizeUtils.h(269),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: SizeUtils.h(269),
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.largeSubHeading,
              // softWrap: true,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Technology",
            style: AppTextStyles.secondarySettingsText,
          ),
        ],
      ),
    );
  }
}
