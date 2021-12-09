import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_scanner/layout/home_layout.dart';
import 'package:qr_scanner/screens/on_boarding/on_boarding_screen.dart';
import 'package:qr_scanner/shared/constants/theme.dart';
import 'package:qr_scanner/shared/network/local/cash_helper.dart';
import 'package:qr_scanner/shared/network/local/shared_keys.dart';
import 'package:qr_scanner/shared/network/remote/dio_helper.dart';
import 'package:qr_scanner/shared/utilities/my_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await CashHelper.init();
  await DioHelper.init();

  bool isOnBoardingSeen =
      CashHelper.getData(key: AppSharedKeys.onBoardingSeen) ?? false;

  BlocOverrides.runZoned(
    () {
      runApp(
        MyApp(
          isOnBoardingSeen: isOnBoardingSeen,
        ),
      );
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.isOnBoardingSeen}) : super(key: key);

  final bool isOnBoardingSeen;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.appThemeLight,
      home: isOnBoardingSeen ? const HomeLayout() : const OnBoardingScreen(),
    );
  }
}
