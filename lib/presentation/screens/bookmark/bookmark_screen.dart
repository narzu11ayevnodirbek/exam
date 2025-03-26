import 'package:exam/imports.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> news = [
      {
        "title": "How to Setup Your Worksapce",
        "info": "Interior",
        "image": AppImages.setupImage
      },
      {
        "title":
            "Discovering Hidden Gems: 8 Off-The-Beaten-Path Travel Destinations",
        "info": "Travel",
        "image": AppImages.gemImage
      },
      {
        "title": "Exploring the World's Best Beaches: Top 5 Picks",
        "info": "Travel",
        "image": AppImages.beachImage
      },
      {
        "title": "Travel Destinations That Won't Break the Bank",
        "info": "Travel",
        "image": AppImages.travelImage
      },
      {
        "title": "How Working Remotely Will Make You More Happy",
        "info": "Business",
        "image": AppImages.remoteImage
      },
      {
        "title": "Destinations for Authentic Local Experiences",
        "info": "Business",
        "image": AppImages.localImage
      },
      {
        "title": "A Guide to Seasonal Gardening",
        "info": "Travel",
        "image": AppImages.gardenImage
      },
      {
        "title": "How to Setup Your Worksapce",
        "info": "Interior",
        "image": AppImages.setupImage
      },
      {
        "title":
            "Discovering Hidden Gems: 8 Off-The-Beaten-Path Travel Destinations",
        "info": "Travel",
        "image": AppImages.gemImage
      },
      {
        "title": "Exploring the World's Best Beaches: Top 5 Picks",
        "info": "Travel",
        "image": AppImages.beachImage
      },
    ];
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: SecondaryAppbar(
        title: "Bookmark",
        icon: AppImages.editIcon,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32, top: 24),
        child: SingleChildScrollView(
          child: Column(
            spacing: 24,
            children: List.generate(
              10,
              (index) {
                return BookmarkNews(
                  title: news[index]["title"],
                  image: news[index]["image"],
                  info: news[index]["info"],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
