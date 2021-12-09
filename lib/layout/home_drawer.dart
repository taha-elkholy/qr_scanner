import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_scanner/shared/constants/app_colors.dart';
import 'package:qr_scanner/shared/constants/app_strings.dart';
import 'package:qr_scanner/shared/cubit/app_cubit.dart';
import 'package:qr_scanner/shared/cubit/app_states.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            children: [
              const AppDrawerHeader(),
              ListTile(
                title: const Text(AppStrings.scanQr),
                leading: Image.asset(
                  'assets/images/qr-code-scan.png',
                  width: 24,
                  height: 24,
                ),
                onTap: () {
                  cubit.changeHomeScreen(index: 1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(AppStrings.createQr),
                leading: Image.asset(
                  'assets/images/writing.png',
                  width: 24,
                  height: 24,
                ),
                onTap: () {
                  cubit.changeHomeScreen(index: 2);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(AppStrings.history),
                leading: Image.asset(
                  'assets/images/history.png',
                  width: 24,
                  height: 24,
                ),
                onTap: () {
                  cubit.changeHomeScreen(index: 3);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(AppStrings.rateTheApp),
                leading: Image.asset(
                  'assets/images/rating.png',
                  width: 24,
                  height: 24,
                ),
                onTap: () {
                  cubit.changeHomeScreen(index: 4);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(AppStrings.contactUs),
                leading: Image.asset(
                  'assets/images/mail.png',
                  width: 24,
                  height: 24,
                ),
                onTap: () {
                  cubit.changeHomeScreen(index: 5);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(AppStrings.privacyPolicy),
                leading: Image.asset(
                  'assets/images/privacy.png',
                  width: 24,
                  height: 24,
                ),
                onTap: () {
                  cubit.changeHomeScreen(index: 6);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class AppDrawerHeader extends StatelessWidget {
  const AppDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        color: AppColors.appMainColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                    image: AssetImage('assets/images/qr.png'),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(AppStrings.appName),
        ],
      ),
    );
  }
}
