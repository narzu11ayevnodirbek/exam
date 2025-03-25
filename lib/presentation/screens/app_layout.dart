import 'dart:ui';

import 'package:exam/core/utils/app_colors.dart';
import 'package:exam/core/utils/app_images.dart';
import 'package:exam/core/utils/size_utils.dart';
import 'package:exam/presentation/screens/bookmark/bookmark_screen.dart';
import 'package:exam/presentation/screens/explore/explore_screen.dart';
import 'package:exam/presentation/screens/home/home_screen.dart';
import 'package:exam/presentation/screens/profile/profile_screen.dart';
import 'package:exam/presentation/widgets/bottom_navigation_bar_icon.dart';
import 'package:flutter/material.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  final List<Widget> screens = [
    HomeScreen(),
    ExploreScreen(),
    BookmarkScreen(),
    ProfileScreen(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: screens[index]),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(24),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  height: SizeUtils.h(80),
                  decoration: BoxDecoration(
                    color: AppColors.bottomNavigationBarBackgroundColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(24),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BottomNavigationBarIcon(
                        index: 0,
                        currentIndex: index,
                        title: "Home",
                        icon: AppImages.homeIcon,
                        onTap: () {
                          index = 0;
                          setState(() {});
                        },
                      ),
                      BottomNavigationBarIcon(
                        index: 1,
                        currentIndex: index,
                        title: "Explore",
                        icon: AppImages.exploreIcon,
                        onTap: () {
                          index = 1;
                          setState(() {});
                        },
                      ),
                      BottomNavigationBarIcon(
                        index: 2,
                        currentIndex: index,
                        title: "Bookmark",
                        icon: AppImages.bookmarkIcon,
                        onTap: () {
                          index = 2;
                          setState(() {});
                        },
                      ),
                      BottomNavigationBarIcon(
                        index: 3,
                        currentIndex: index,
                        title: "Profile",
                        icon: AppImages.profileIcon,
                        onTap: () {
                          index = 3;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
