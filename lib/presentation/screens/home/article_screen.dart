import 'dart:ui';

import 'package:exam/core/utils/app_colors.dart';
import 'package:exam/core/utils/app_images.dart';
import 'package:exam/core/utils/app_text_styles.dart';
import 'package:exam/core/utils/size_utils.dart';
import 'package:exam/presentation/widgets/authors_widget.dart';
import 'package:exam/presentation/widgets/soon_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Image.asset(
              AppImages.articleImage,
            ),
          ),
          AnimatedAlign(
            alignment: Alignment.bottomCenter,
            duration: Duration(seconds: 3),
            // bottom: 0,
            // left: 0,
            // right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
              height: SizeUtils.h(932) * 0.7,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "See How the Forest is Helping Our World",
                      style: AppTextStyles.largeHeading,
                    ),
                    SizedBox(height: SizeUtils.h(16)),
                    AuthorsWidget(
                      image: AppImages.avatarHarryImage,
                      title: "Harry Harper · Apr 12, 2023",
                    ),
                    SizedBox(height: SizeUtils.h(24)),
                    Text(
                      "Forests are one of the most important natural resources that our planet possesses. Not only do they provide us with a diverse range of products such as timber, medicine, and food, but they also play a vital role in mitigating climate change and maintaining the overall health of our planet's ecosystems. In this article, we will explore the ways in which forests are helping our world. One of the most important roles that forests play is in absorbing carbon dioxide from the atmosphere. Trees absorb carbon dioxide through photosynthesis and store it in their trunks, branches, and leaves. This carbon sequestration helps to mitigate climate change by reducing the amount of greenhouse gases in the atmosphere. Forests are estimated to absorb approximately 2.4 billion tonnes of carbon dioxide each year, which is equivalent to around 10% of global greenhouse gas emissions. Forests also play a crucial role in maintaining the water cycle. Trees absorb water from the soil and release it back into the atmosphere through a process known as transpiration. This helps to regulate the local climate and prevents soil erosion and flooding. Forests also act as natural water filters, helping to purify water that flows through them. Forests are also important sources of biodiversity. They provide habitat for countless species of plants and animals, many of which are found nowhere else on earth. Forests also provide a source of food and medicine for many communities around the world. In fact, it is estimated that around 80% of the world's population relies on traditional medicine derived from plants, many of which are found in forests. In addition to their ecological and cultural importance, forests also provide economic benefits. They provide jobs and income for millions of people around the world, particularly in rural areas. Forests also provide timber, paper, and other products that are essential to many industries.",
                      textAlign: TextAlign.left,
                      style: AppTextStyles.articleText,
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(24),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeUtils.w(32),
                  ),
                  width: double.infinity,
                  height: SizeUtils.h(68),
                  decoration: BoxDecoration(
                    color: Color(0xFFF3EBE9),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset(AppImages.arrowBackIcon),
                      ),
                      Spacer(),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            spacing: 8,
                            children: [
                              IconButton(
                                onPressed: () {
                                  SoonDialog.showCustomDialog(
                                      context: context,
                                      onPressed: () {
                                        Navigator.pop(context);
                                      });
                                },
                                icon: SvgPicture.asset(AppImages.handsClapIcon),
                              ),
                              Text("1")
                            ],
                          ),
                          IconButton(
                            onPressed: () {
                              SoonDialog.showCustomDialog(
                                  context: context,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  });
                            },
                            icon: SvgPicture.asset(AppImages.saveIcon),
                          ),
                          IconButton(
                            onPressed: () {
                              SoonDialog.showCustomDialog(
                                  context: context,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  });
                            },
                            icon: SvgPicture.asset(AppImages.shareIcon),
                          ),
                        ],
                      )
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
