import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_scanner/screens/on_boarding/cubit/on_boarding_cubit.dart';
import 'package:qr_scanner/screens/on_boarding/widgets/custom_page_indicator.dart';
import 'package:qr_scanner/screens/on_boarding/widgets/custom_page_view.dart';
import 'package:qr_scanner/shared/constants/app_colors.dart';
import 'package:qr_scanner/shared/constants/app_strings.dart';
import 'package:qr_scanner/shared/utilities/size_config.dart';
import 'package:qr_scanner/shared/widgets/app_custom_buttons.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  late PageController controller;

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // get screen size before build
    SizeConfig().init(context);
    return BlocConsumer<OnBoardingCubit, OnBoardingState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = OnBoardingCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            actions: [
              Visibility(
                visible: (cubit.index != 3) ? true : false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextButton(
                      onPressed: () {
                        cubit.goToHome(context);
                      },
                      child: const Text(
                        AppStrings.skip,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.appGrey,
                        ),
                      )),
                ),
              ),
            ],
          ),
          body: Stack(
            children: [
              CustomPageView(
                pageController: controller,
                onPageChanged: (index) => cubit.changIndex(index),
              ),
              Positioned(
                bottom: SizeConfig.screenHeight! * .25,
                right: 0,
                left: 0,
                child: CustomPageIndicator(
                  pageController: controller,
                ),
              ),
              Positioned(
                left: SizeConfig.screenWidth! * .25,
                right: SizeConfig.screenWidth! * .25,
                bottom: SizeConfig.screenHeight! * .1,
                child: AppCustomGeneralButton(
                    text: (cubit.index != 3)
                        ? AppStrings.next
                        : AppStrings.getStarted,
                    onTap: () {
                      if (cubit.index != 3) {
                        controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn);
                      } else {
                        cubit.goToHome(context);
                      }
                    }),
              ),
            ],
          ),
        );
      },
    );
  }
}
