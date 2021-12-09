import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_scanner/screens/create_qr/create_qr_screen.dart';
import 'package:qr_scanner/screens/history/history_screen.dart';
import 'package:qr_scanner/screens/scan_qr/scan_qr_screen.dart';
import 'package:qr_scanner/shared/constants/app_strings.dart';
import 'package:qr_scanner/shared/cubit/app_states.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(AppInitialState());

  // get instance of the cubit
  static AppCubit get(context) => BlocProvider.of(context);

  String homeTitle = AppStrings.scanQr;
  Widget homeScreen = const ScanQrScreen();
  void changeHomeScreen({required int index}){
    switch(index){
      case 1:{
        homeTitle = AppStrings.scanQr;
        homeScreen = const ScanQrScreen();
        break;
      }
      case 2:{
        homeTitle = AppStrings.createQr;
        homeScreen = const CreateQrScreen();
        break;
      }
      case 3:{
        homeTitle = AppStrings.history;
        homeScreen = const HistoryScreen();
        break;
      }
      case 4:{
        // home screen not changed
        // todo go to rating
        break;
      }
      case 5:{
        // home screen not changed
        // todo go to contact us
        break;
      }
      case 6:{
        homeTitle = AppStrings.privacyPolicy;
        // todo web view screen with the privacy link
        //homeScreen = const WebViewScreen(url: privacyUrl);
        break;
      }

    }
    emit(AppHomeScreenChangedState());
  }

}