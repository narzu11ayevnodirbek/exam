import 'package:exam/imports.dart';

class LineWidget extends StatelessWidget {
  const LineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 2,
      margin: EdgeInsets.symmetric(horizontal: SizeUtils.w(32)),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.lineColor,
        ),
      ),
    );
  }
}
