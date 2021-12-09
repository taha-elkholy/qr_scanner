import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_scanner/shared/constants/app_colors.dart';

abstract class AppThemes {
  static ThemeData appThemeLight = ThemeData(
      scaffoldBackgroundColor: AppColors.appWhite,
      primarySwatch: Colors.blue,
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
        ),
        titleSpacing: 20,
        titleTextStyle: TextStyle(
            color: AppColors.appBlack,
            fontSize: 20,
            fontWeight: FontWeight.bold),
        actionsIconTheme: IconThemeData(
          color: AppColors.appBlack,
        ),
        iconTheme: IconThemeData(
          color: AppColors.appBlack,
        ),
      ));
}
