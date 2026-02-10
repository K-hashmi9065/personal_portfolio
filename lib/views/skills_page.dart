import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/app_info.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import '../globals/app_text_styles.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          buildSkillsTitle(),
          Constants.sizedBox(height: 40.0),
          ...buildSkillCards(),
        ],
      ),
      tablet: Column(
        children: [
          buildSkillsTitle(),
          Constants.sizedBox(height: 40.0),
          ...buildSkillCards(),
        ],
      ),
      desktop: Column(
        children: [
          buildSkillsTitle(),
          Constants.sizedBox(height: 40.0),
          Wrap(
            spacing: 24.0,
            runSpacing: 24.0,
            children: buildSkillCards(),
          ),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }

  FadeInDown buildSkillsTitle() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'My ',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'Skills',
              style: AppTextStyles.headingStyles(
                  fontSize: 30, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> buildSkillCards() {
    List<Widget> cards = [];

    AppInfo.skills.forEach((category, skillsList) {
      cards.add(
        FadeInUp(
          duration: const Duration(milliseconds: 1400),
          child: Container(
            width: 350,
            padding: const EdgeInsets.all(24.0),
            margin: const EdgeInsets.only(bottom: 24.0),
            decoration: BoxDecoration(
              color: AppColors.bgColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.themeColor, width: 2),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 2.0,
                  blurRadius: 8.0,
                  offset: Offset(0, 4),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      _getIconForCategory(category),
                      color: AppColors.themeColor,
                      size: 28,
                    ),
                    Constants.sizedBox(width: 12.0),
                    Expanded(
                      child: Text(
                        category,
                        style: AppTextStyles.montserratStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Constants.sizedBox(height: 16.0),
                ...skillsList.map((skill) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      skill,
                      style: AppTextStyles.normalStyle(fontSize: 14.0),
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
        ),
      );
    });

    return cards;
  }

  IconData _getIconForCategory(String category) {
    if (category.contains('Mobile')) {
      return Icons.phone_android;
    } else if (category.contains('State Management')) {
      return Icons.settings_applications;
    } else if (category.contains('Backend') || category.contains('APIs')) {
      return Icons.cloud;
    } else if (category.contains('Architecture')) {
      return Icons.architecture;
    } else if (category.contains('Database')) {
      return Icons.storage;
    } else if (category.contains('Version Control')) {
      return Icons.code;
    }
    return Icons.star;
  }
}
