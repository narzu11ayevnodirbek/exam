import 'package:exam/core/utils/app_colors.dart';
import 'package:exam/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

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
