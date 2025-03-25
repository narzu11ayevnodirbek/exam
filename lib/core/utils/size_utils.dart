import 'package:flutter/widgets.dart';

class SizeUtils {
  static late double screenWidth;
  static late double screenHeight;
  static late double scaleWidth;
  static late double scaleHeight;

  static void init(BuildContext context,
      {double figmaWidth = 430, double figmaHeight = 932}) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    scaleWidth = screenWidth / figmaWidth;
    scaleHeight = screenHeight / figmaHeight;
  }

  static double w(double width) {
    return width * scaleWidth;
  }

  static double h(double height) {
    return height * scaleHeight;
  }

  static double sp(double fontSize) {
    return fontSize * scaleWidth;
  }
}
