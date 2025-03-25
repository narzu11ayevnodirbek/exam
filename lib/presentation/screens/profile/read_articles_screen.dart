import 'package:exam/core/utils/app_colors.dart';
import 'package:exam/core/utils/app_images.dart';
import 'package:exam/core/utils/app_text_styles.dart';
import 'package:exam/core/utils/size_utils.dart';
import 'package:exam/presentation/widgets/appbars/profile_appbar.dart';
import 'package:exam/presentation/widgets/containers/news_container.dart';
import 'package:flutter/material.dart';

class ReadArticlesScreen extends StatefulWidget {
  const ReadArticlesScreen({super.key});

  @override
  State<ReadArticlesScreen> createState() => _ReadArticlesScreenState();
}

class _ReadArticlesScreenState extends State<ReadArticlesScreen> {
  int selectedIndex = 0;
  Color selectedColor = AppColors.splashBackgroundColor;
  Color unselectedColor = AppColors.primaryColor;

  List<Map<String, dynamic>> news = [
    {
      "title": "Experience the Serenity of Japan's Traditional Countryside",
      "info": "Mathew Berge · Apr 17, 2023",
      "image": AppImages.japanImage,
      "avatar": AppImages.avatarMatthewImage,
    },
    {
      "title":
          "Experience vs. Education: What Matters More in Today's Job Market?",
      "info": "Robin Wilkin · Apr 20, 2023",
      "image": AppImages.educationImage,
      "avatar": AppImages.avatarRobinImage,
    },
    {
      "title":
          "Harnessing the Power of Experience: How to Use Your Past to Improve Your Future",
      "info": "Phillip Paucuk · Apr 29, 2023",
      "image": AppImages.experienceImage,
      "avatar": AppImages.avatarPhillipImage,
    },
    {
      "title": "The Role of Experience in Developing Emotional Intelligence",
      "info": "Gilberto Jacob · May 2, 2023",
      "image": AppImages.emotinalImage,
      "avatar": AppImages.avatarGilbertoImage,
    },
    {
      "title":
          "From Failure to Success: How Experience Can Help You Overcome Setbacks",
      "info": "Faith Smitham · May 6, 2023",
      "image": AppImages.successImage,
      "avatar": AppImages.avatarFaithImage
    },
    {
      "title": "The Benefits of Multidisciplinary Experience in the Workplace",
      "info": "Sophie Larkin · May 10, 2023",
      "image": AppImages.benefitImage,
      "avatar": AppImages.avatarSophieImage
    },
    {
      "title":
          "Experience and Creativity: Exploring the Connection Between Life Experience and Innovation",
      "info": "Glenn O'Conner · May 13, 2023",
      "image": AppImages.creativityImage,
      "avatar": AppImages.avatarGlennImage
    }
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: ProfileAppbar(
          title: "Read Articles",
          onTap: () {
            Navigator.pop(context);
          },
        ),
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
                  List<Map<String, dynamic>> categories = [
                    {
                      "text": "All",
                      "count": "(132)",
                    },
                    {
                      "text": "Travel",
                      "count": "(51)",
                    },
                    {
                      "text": "Technology",
                      "count": "(16)",
                    },
                    {
                      "text": "Entertainment",
                      "count": "(5)",
                    },
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
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: categories[index]["text"],
                              style: AppTextStyles.tabBarText,
                            ),
                            TextSpan(
                              text: categories[index]["count"],
                              style: AppTextStyles.descriptionText,
                            ),
                          ],
                        ),
                      ),
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
                            Column(
                              spacing: 24,
                              children: List.generate(
                                7,
                                (index) {
                                  return NewsContainer(
                                    image: news[index]["image"],
                                    title: news[index]["title"],
                                    avatar: news[index]["avatar"],
                                    info: news[index]["info"],
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
