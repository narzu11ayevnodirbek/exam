import 'package:exam/core/utils/app_colors.dart';
import 'package:exam/core/utils/app_images.dart';
import 'package:exam/core/utils/app_text_styles.dart';
import 'package:exam/core/utils/size_utils.dart';
import 'package:exam/presentation/widgets/authors_widget.dart';
import 'package:exam/presentation/widgets/containers/news_container.dart';
import 'package:exam/presentation/widgets/appbars/secondary_appbar.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int selectedIndex = 0;
  Color selectedColor = AppColors.splashBackgroundColor;
  Color unselectedColor = AppColors.primaryColor;

  List<Map<String, dynamic>> container = [
    {
      "title": "Experience the Serenity of Japan's Traditional Countryside",
      "avatar": AppImages.avatarHildaImage,
      "image": AppImages.sakuraImage,
      "info": "Hilda Friesman · May 3, 2023"
    },
    {
      "title": "A Journey Through Time: Discovering the Nile river",
      "avatar": AppImages.avatarMelissaImage,
      "image": AppImages.nileImage,
      "info": "Melissa White · May 7, 2023"
    },
    {
      "title": "Chasing the Northern Lights: A Winter in Finland",
      "avatar": AppImages.avatarJeannieImage,
      "image": AppImages.finlandImage,
      "info": "Jeannie Conn · May 12, 2023"
    },
    {
      "title": "Experience the Serenity of Japan's Traditional Countryside",
      "avatar": AppImages.avatarHildaImage,
      "image": AppImages.sakuraImage,
      "info": "Hilda Friesman · May 3, 2023"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: SecondaryAppbar(title: "Explore", icon: AppImages.searchIcon),
        body: Column(
          children: [
            SizedBox(height: SizeUtils.h(22)),
            TabBar(
              isScrollable: true,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              indicator: BoxDecoration(),
              dividerColor: Colors.transparent,
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              tabs: List.generate(
                4,
                (index) {
                  List<String> categories = [
                    "Travel",
                    "Technology",
                    "Business",
                    "Entertainment"
                  ];
                  return Tab(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(56),
                        color: selectedIndex == index
                            ? selectedColor
                            : unselectedColor,
                        border: Border.all(
                          color: AppColors.splashBackgroundColor,
                        ),
                      ),
                      child: Text(categories[index],
                          style: AppTextStyles.tabBarText),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: SizeUtils.h(24)),
            Expanded(
              child: TabBarView(
                children: [
                  for (int i = 0; i < 4; i++)
                    SingleChildScrollView(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: SizeUtils.w(32)),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                AppImages.exploreImage,
                                height: SizeUtils.h(206),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: SizeUtils.h(16)),
                            Text(
                              "Uncovering the Hidden Gems of the Amazon Forest",
                              style: AppTextStyles.largeSubHeading,
                            ),
                            SizedBox(height: SizeUtils.h(12)),
                            AuthorsWidget(
                              image: AppImages.avatarLanaImage,
                              title: "Mr.Lana Kub · May 1, 2023",
                            ),
                            SizedBox(height: SizeUtils.h(43)),
                            Column(
                              spacing: 24,
                              children: List.generate(
                                4,
                                (index) {
                                  return NewsContainer(
                                    image: container[index]["image"],
                                    title: container[index]["title"],
                                    avatar: container[index]["avatar"],
                                    info: container[index]["info"],
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
