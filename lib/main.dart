import 'package:exam/core/utils/size_utils.dart';
import 'package:exam/presentation/screens/splash/splash_screen.dart';
import 'package:exam/presentation/screens/splash/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        SizeUtils.init(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        );
      },
    );
  }
}
