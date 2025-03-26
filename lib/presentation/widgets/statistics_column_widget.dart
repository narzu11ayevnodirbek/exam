import 'package:exam/imports.dart';

class StatisticsColumnWidget extends StatelessWidget {
  final String title;
  final String info;
  const StatisticsColumnWidget({
    super.key,
    required this.title,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyles.statisticsText),
        Text(info, style: AppTextStyles.largeSubHeading)
      ],
    );
  }
}
