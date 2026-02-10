import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/app_info.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import '../globals/app_text_styles.dart';

class WorkExperience extends StatelessWidget {
  const WorkExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          buildExperienceTitle(),
          Constants.sizedBox(height: 40.0),
          ...buildExperienceCards(),
          Constants.sizedBox(height: 60.0),
          buildEducationSection(),
        ],
      ),
      tablet: Column(
        children: [
          buildExperienceTitle(),
          Constants.sizedBox(height: 40.0),
          ...buildExperienceCards(),
          Constants.sizedBox(height: 60.0),
          buildEducationSection(),
        ],
      ),
      desktop: Column(
        children: [
          buildExperienceTitle(),
          Constants.sizedBox(height: 40.0),
          ...buildExperienceCards(),
          Constants.sizedBox(height: 60.0),
          buildEducationSection(),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor,
    );
  }

  FadeInDown buildExperienceTitle() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'Work ',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'Experience',
              style: AppTextStyles.headingStyles(
                  fontSize: 30, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> buildExperienceCards() {
    return AppInfo.workExperience.map((experience) {
      return Column(
        children: [
          FadeInUp(
            duration: const Duration(milliseconds: 1400),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24.0),
              margin: const EdgeInsets.only(bottom: 24.0),
              decoration: BoxDecoration(
                color: AppColors.bgColor2,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          experience['company'] as String,
                          style: AppTextStyles.montserratStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Text(
                        experience['duration'] as String,
                        style: AppTextStyles.normalStyle(
                          color: AppColors.robinEdgeBlue,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                  Constants.sizedBox(height: 8.0),
                  Text(
                    experience['position'] as String,
                    style: AppTextStyles.montserratStyle(
                      color: AppColors.themeColor,
                      fontSize: 16.0,
                    ),
                  ),
                  Constants.sizedBox(height: 16.0),
                  ...(experience['responsibilities'] as List<dynamic>)
                      .map((responsibility) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '• ',
                            style: AppTextStyles.normalStyle(
                              color: AppColors.themeColor,
                              fontSize: 16.0,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              responsibility as String,
                              style: AppTextStyles.normalStyle(fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ],
              ),
            ),
          ),
        ],
      );
    }).toList();
  }

  Widget buildEducationSection() {
    return FadeInUp(
      duration: const Duration(milliseconds: 1600),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: 'Education',
              style: AppTextStyles.headingStyles(fontSize: 30.0),
            ),
          ),
          Constants.sizedBox(height: 24.0),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: AppColors.bgColor2,
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
                Text(
                  AppInfo.education['duration']!,
                  style: AppTextStyles.normalStyle(
                    color: AppColors.robinEdgeBlue,
                    fontSize: 14.0,
                  ),
                ),
                Constants.sizedBox(height: 8.0),
                Text(
                  AppInfo.education['degree']!,
                  style: AppTextStyles.montserratStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
