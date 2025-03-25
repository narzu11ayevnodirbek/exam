import 'package:exam/core/utils/app_text_styles.dart';
import 'package:exam/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class BookmarkNews extends StatelessWidget {
  final String title;
  final String image;
  final String info;
  const BookmarkNews({
    super.key,
    required this.title,
    required this.image,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: SizeUtils.w(238),
                child: Text(
                  title,
                  style: AppTextStyles.newsTitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
              ),
              SizedBox(height: SizeUtils.h(4)),
              Text(info, style: AppTextStyles.descriptionText),
            ],
          ),
          Image.asset(
            image,
            width: SizeUtils.w(112),
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
