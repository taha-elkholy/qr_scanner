part of 'on_boarding_cubit.dart';

@immutable
abstract class OnBoardingState {}

class OnBoardingInitial extends OnBoardingState {}
class OnBoardingChanged extends OnBoardingState {
  final int index;

  OnBoardingChanged(this.index);
}
