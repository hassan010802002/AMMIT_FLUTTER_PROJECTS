part of 'on_boarding_cubit.dart';

@immutable
abstract class OnBoardingState {}

class OnBoardingInitial extends OnBoardingState {}

class ViewInitialState extends OnBoardingState {}
class ViewChangeState extends OnBoardingState {}
