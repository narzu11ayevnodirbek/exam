import 'package:exam/imports.dart';

class NewsContainer extends StatelessWidget {
  final String image;
  final String title;
  final String avatar;
  final String info;

  const NewsContainer({
    super.key,
    required this.image,
    required this.title,
    required this.avatar,
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
              AuthorsWidget(
                image: avatar,
                title: info,
              )
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
