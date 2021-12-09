import 'package:flutter/material.dart';
import 'package:qr_scanner/shared/constants/app_strings.dart';
import 'package:qr_scanner/shared/constants/text_styles.dart';
import 'package:qr_scanner/shared/utilities/size_config.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight! * .6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(
                height: SizeConfig.screenHeight! * .03,
              ),
              const Text(
                AppStrings.discoverQrCode,
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
