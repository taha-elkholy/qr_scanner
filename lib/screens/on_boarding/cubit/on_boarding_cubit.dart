import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:qr_scanner/layout/home_layout.dart';
import 'package:qr_scanner/shared/component/app_components.dart';
import 'package:qr_scanner/shared/network/local/cash_helper.dart';
import 'package:qr_scanner/shared/network/local/shared_keys.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  static OnBoardingCubit get(context) => BlocProvider.of(context);

  int index = 0;

  changIndex(int index) {
    this.index = index;
    emit(OnBoardingChanged(index));
  }

  void goToHome(context) {
    AppComponents.goToAndFinish(context, const HomeLayout());
    CashHelper.saveData(key: AppSharedKeys.onBoardingSeen, value: true);
  }
}
