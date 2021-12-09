import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_scanner/layout/home_drawer.dart';
import 'package:qr_scanner/shared/cubit/app_cubit.dart';
import 'package:qr_scanner/shared/cubit/app_states.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child:BlocConsumer<AppCubit, AppStates>(
          listener: (context, state){},
          builder: (context, state){
            var cubit = AppCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                title: Text(cubit.homeTitle),
              ),
              drawer: const HomeDrawer(),
              body: cubit.homeScreen,
            );
          },
      ),
    );
  }
}
