import 'package:flutter/material.dart';
import 'package:qr_scanner/shared/constants/app_colors.dart';
import 'package:qr_scanner/shared/constants/app_strings.dart';
import 'package:qr_scanner/shared/constants/text_styles.dart';
import 'package:qr_scanner/shared/utilities/size_config.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight! * .6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: SizeConfig.screenWidth! * .6,
                    height: SizeConfig.screenWidth! * .6,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/qr.png'),
                            fit: BoxFit.cover)),
                  ),

                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors.appWhite,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.check_circle_rounded,
                        color: AppColors.appGreen,
                        size: 60,),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * .03,
              ),
              const Text(
                AppStrings.scanSuccessful,
                style: AppTextStyles.appTitleTextStyle,
              ),
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
