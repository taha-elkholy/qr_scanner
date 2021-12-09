import 'package:flutter/material.dart';
import 'package:qr_scanner/shared/constants/app_colors.dart';
import 'package:qr_scanner/shared/constants/dimensions.dart';

class AppCustomGeneralButton extends StatelessWidget {
  const AppCustomGeneralButton({Key? key, required this.text, required this.onTap})
      : super(key: key);
  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppDimensions.horizontalButtonPadding),
      height: 50,
      width: double.infinity,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
          color: AppColors.appMainColor,
          borderRadius: BorderRadius.circular(30),
      ),
      child: MaterialButton(
        onPressed: onTap,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.appWhite,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

