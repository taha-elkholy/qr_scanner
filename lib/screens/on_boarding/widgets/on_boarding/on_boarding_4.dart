import 'package:flutter/material.dart';
import 'package:qr_scanner/screens/on_boarding/widgets/my_colored_box.dart';
import 'package:qr_scanner/shared/constants/app_colors.dart';
import 'package:qr_scanner/shared/constants/app_strings.dart';
import 'package:qr_scanner/shared/constants/text_styles.dart';
import 'package:qr_scanner/shared/utilities/size_config.dart';

class OnBoarding4 extends StatelessWidget {
  const OnBoarding4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight! * .6,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    MyColoredBox(
                      width: 32,
                      height: SizeConfig.screenHeight! * .02,
                      color: AppColors.appMainColor,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    MyColoredBox(
                      width: 32,
                      height: SizeConfig.screenHeight! * .02,
                      color: AppColors.appRed,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    MyColoredBox(
                      width: 32,
                      height: SizeConfig.screenHeight! * .02,
                      color: AppColors.appGreen,
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * .03,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 86,
                      height: 86,
                      decoration: BoxDecoration(
                        color: AppColors.appMainColor,
                        borderRadius: BorderRadius.circular(43),
                      ),
                    ),
                    Container(
                      width: 82,
                      height: 82,
                      decoration: BoxDecoration(
                        color: AppColors.appWhite,
                        borderRadius: BorderRadius.circular(41),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/info.png',
                          ),

                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * .03,
                ),
                MyColoredBox(
                  width: 80,
                  height: SizeConfig.screenHeight! * .005,
                  color: AppColors.appLightGrey,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * .03,
                ),
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    MyColoredBox(
                      width: double.infinity,
                      height: SizeConfig.screenHeight! * .1,
                      color: AppColors.appLightGrey,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: SizeConfig.screenHeight! * .01),
                      child: MyColoredBox(
                        width: 60,
                        height: SizeConfig.screenHeight! * .08,
                        color: AppColors.appMainColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * .03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: MyColoredBox(
                      width: 180,
                      height: SizeConfig.screenHeight! * .02,
                      color: AppColors.appGrey),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * .03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: MyColoredBox(
                      width: 120,
                      height: SizeConfig.screenHeight! * .02,
                      color: AppColors.appMainColor),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * .03,
                ),
                const Text(
                  AppStrings.useInformation,
                  style: AppTextStyles.appTitleTextStyle,
                )
              ],
            ),
          ),
        ),
        const Spacer()
      ],
    );
  }
}
