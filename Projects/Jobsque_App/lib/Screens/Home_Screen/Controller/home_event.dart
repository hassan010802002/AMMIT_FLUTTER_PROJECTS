part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class FetchApiDataEvent extends HomeEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}