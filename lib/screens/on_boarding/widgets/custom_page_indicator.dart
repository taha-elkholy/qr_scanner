import 'package:flutter/material.dart';
import 'package:qr_scanner/shared/constants/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({required this.pageController, Key? key})
      : super(key: key);
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SmoothPageIndicator(
        controller: pageController,
        axisDirection: Axis.horizontal,
        effect: const WormEffect(
            spacing: 5.0,
            radius: 4.0,
            dotWidth: 16.0,
            dotHeight: 8.0,
            paintStyle: PaintingStyle.fill,
            strokeWidth: 1.5,
            dotColor: AppColors.appGrey,
            activeDotColor: AppColors.appMainColor),
        count: 4,
      ),
    );
  }
}
