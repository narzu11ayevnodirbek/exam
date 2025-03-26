import 'package:exam/imports.dart';

class AuthorsWidget extends StatelessWidget {
  final String image;
  final String title;
  const AuthorsWidget({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        CircleAvatar(
          radius: SizeUtils.h(23),
          backgroundImage: AssetImage(image),
        ),
        Text(
          title,
          style: AppTextStyles.descriptionText,
        )
      ],
    );
  }
}
