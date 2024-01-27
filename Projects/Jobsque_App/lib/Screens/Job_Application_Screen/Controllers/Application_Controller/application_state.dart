part of 'application_cubit.dart';

abstract class ApplicationState extends Equatable {
  const ApplicationState();
}

class ApplicationInitial extends ApplicationState {
  @override
  List<Object> get props => [];
}
