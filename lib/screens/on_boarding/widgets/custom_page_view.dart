import 'package:flutter/material.dart';
import 'package:qr_scanner/screens/on_boarding/widgets/on_boarding/on_boarding_1.dart';
import 'package:qr_scanner/screens/on_boarding/widgets/on_boarding/on_boarding_2.dart';
import 'package:qr_scanner/screens/on_boarding/widgets/on_boarding/on_boarding_3.dart';
import 'package:qr_scanner/screens/on_boarding/widgets/on_boarding/on_boarding_4.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView(
      {Key? key, required this.pageController, required this.onPageChanged})
      : super(key: key);
  final PageController pageController;
  final Function(int index) onPageChanged;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      onPageChanged: onPageChanged,
      physics: const BouncingScrollPhysics(),
      children: const [
        OnBoarding1(),
        OnBoarding2(),
        OnBoarding3(),
        OnBoarding4(),
      ],
    );
  }
}
