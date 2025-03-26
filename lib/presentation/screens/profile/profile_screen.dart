import 'package:exam/imports.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: SizeUtils.h(83),
              left: SizeUtils.w(32),
              right: SizeUtils.w(32),
            ),
            child: Row(
              spacing: 24,
              children: [
                CircleAvatar(
                  radius: SizeUtils.w(60),
                  backgroundImage: AssetImage(
                    AppImages.userImage,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dianne Russell",
                      style: AppTextStyles.largeSubHeading,
                    ),
                    Row(
                      spacing: 8,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/bookworm.svg",
                          width: 20,
                        ),
                        Text(
                          "Bookworm",
                          style: AppTextStyles.statusText,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: SizeUtils.h(24)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeUtils.w(32)),
            child: Row(
              spacing: 48,
              children: [
                StatisticsColumnWidget(title: "Article Read", info: "320"),
                StatisticsColumnWidget(title: "Streak", info: "245 Days"),
                StatisticsColumnWidget(title: "Level", info: "125"),
              ],
            ),
          ),
          SizedBox(height: SizeUtils.h(24)),
          LineWidget(),
          SizedBox(height: SizeUtils.h(24)),
          Padding(
            padding: EdgeInsets.only(left: SizeUtils.w(32)),
            child: Text("Reading History", style: AppTextStyles.newsTitle),
          ),
          SizedBox(height: SizeUtils.h(16)),
          RowLikeWidget(
            title: "Clapped Articles",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ClappedArticlesScreen(),
                ),
              );
            },
          ),
          SizedBox(height: SizeUtils.h(16)),
          RowLikeWidget(
            title: "Read Articles",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReadArticlesScreen(),
                ),
              );
            },
          ),
          SizedBox(height: SizeUtils.h(16)),
          Padding(
            padding: EdgeInsets.only(left: SizeUtils.w(32)),
            child: Text(
              "Settings",
              style: AppTextStyles.newsTitle,
            ),
          ),
          SizedBox(height: SizeUtils.h(16)),
          RowLikeWidget(
            title: "My Account",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyAccountScreen(),
                ),
              );
            },
          ),
          SizedBox(height: SizeUtils.h(16)),
          RowLikeWidget(
            title: "Privacy Settings",
            onTap: () {
              SoonDialog.showCustomDialog(
                  context: context,
                  onPressed: () {
                    Navigator.pop(context);
                  });
            },
          ),
          SizedBox(height: SizeUtils.h(16)),
          RowLikeWidget(
            title: "Offline Reading",
            onTap: () {
              SoonDialog.showCustomDialog(
                  context: context,
                  onPressed: () {
                    Navigator.pop(context);
                  });
            },
          ),
          SizedBox(height: SizeUtils.h(16)),
          RowLikeWidget(
            title: "About Us",
            onTap: () {
              SoonDialog.showCustomDialog(
                  context: context,
                  onPressed: () {
                    Navigator.pop(context);
                  });
            },
          ),
        ],
      ),
    );
  }
}
