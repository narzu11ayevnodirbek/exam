import 'package:exam/core/utils/app_colors.dart';
import 'package:exam/presentation/widgets/appbars/profile_appbar.dart';
import 'package:exam/presentation/widgets/containers/line_widget.dart';
import 'package:exam/presentation/widgets/row_like_widget.dart';
import 'package:flutter/material.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: ProfileAppbar(
        title: "My Account",
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: Column(
        children: [
          SizedBox(height: 24),
          RowLikeWidget(title: "Email Address", info: "le*******gds@gmail.com"),
          SizedBox(height: 4),
          RowLikeWidget(
            title: "Connect Account",
            info: "Google, Facebook",
          ),
          SizedBox(height: 4),
          RowLikeWidget(title: "Account Password"),
          SizedBox(height: 16),
          LineWidget(),
          SizedBox(height: 16),
          RowLikeWidget(
            title: "Delete Account",
            info: "Permanently delete your account.",
          )
        ],
      ),
    );
  }
}
