part of 'main_profile_controller_bloc.dart';

abstract class MainProfileControllerEvent extends Equatable {
  const MainProfileControllerEvent();
}

class FetchingProfileApiData extends MainProfileControllerEvent{
  @override
  List<Object?> get props => throw UnimplementedError();
}