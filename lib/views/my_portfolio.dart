import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_info.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import 'package:url_launcher/url_launcher.dart';
import '../globals/app_colors.dart';
import '../globals/app_text_styles.dart';
import '../globals/constants.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({Key? key}) : super(key: key);

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  final onH0verEffect = Matrix4.identity()..scaleByDouble(1.0, 1.0, 1.0, 1.0);

  List images = <String>[
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
  ];

  int? hoveredIndex;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildProjectText(),
          Constants.sizedBox(height: 40.0),
          buildProjectGridView(crossAxisCount: 1)
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildProjectText(),
          Constants.sizedBox(height: 40.0),
          buildProjectGridView(crossAxisCount: 2)
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildProjectText(),
          Constants.sizedBox(height: 40.0),
          buildProjectGridView(crossAxisCount: 3),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }

  GridView buildProjectGridView({required int crossAxisCount}) {
    return GridView.builder(
      itemCount: AppInfo.projects.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisExtent: 320,
        mainAxisSpacing: 24,
        crossAxisSpacing: 24,
      ),
      itemBuilder: (context, index) {
        var image = images[index % images.length];
        var project = AppInfo.projects[index];

        return FadeInUpBig(
          duration: const Duration(milliseconds: 1600),
          child: InkWell(
            onTap: () => _launchGitHubUrl(project['githubUrl'] as String),
            onHover: (value) {
              setState(() {
                if (value) {
                  hoveredIndex = index;
                } else {
                  hoveredIndex = null;
                }
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.fill),
                  ),
                ),
                Visibility(
                  visible: index == hoveredIndex,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    transform: index == hoveredIndex ? onH0verEffect : null,
                    curve: Curves.easeIn,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [
                            AppColors.themeColor.withValues(alpha: .0),
                            AppColors.themeColor.withValues(alpha: 0.9),
                            AppColors.themeColor.withValues(alpha: 0.8),
                            AppColors.themeColor.withValues(alpha: 0.6),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          project['name'] as String,
                          style: AppTextStyles.montserratStyle(
                              color: Colors.black87, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        Constants.sizedBox(height: 15.0),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  project['description'] as String,
                                  style: AppTextStyles.normalStyle(
                                      color: Colors.black87, fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                                Constants.sizedBox(height: 8.0),
                                ...(project['features'] as List<dynamic>)
                                    .map((feature) {
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 4.0),
                                    child: Text(
                                      '• $feature',
                                      style: AppTextStyles.normalStyle(
                                          color: Colors.black87, fontSize: 12),
                                      textAlign: TextAlign.center,
                                    ),
                                  );
                                }).toList(),
                              ],
                            ),
                          ),
                        ),
                        Constants.sizedBox(height: 12.0),
                        const Tooltip(
                          message: 'View on GitHub',
                          child: CircleAvatar(
                            maxRadius: 25,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.code,
                              color: Colors.black87,
                              size: 28,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  FadeInDown buildProjectText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'Latest ',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'Projects',
              style: AppTextStyles.headingStyles(
                  fontSize: 30, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _launchGitHubUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('Could not launch $url');
    }
  }
}
