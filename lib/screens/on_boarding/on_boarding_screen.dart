import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_scanner/screens/on_boarding/cubit/on_boarding_cubit.dart';
import 'package:qr_scanner/screens/on_boarding/widgets/on_boarding_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) {
          return OnBoardingCubit();
        },
        child: const OnBoardingBody());
  }
}
