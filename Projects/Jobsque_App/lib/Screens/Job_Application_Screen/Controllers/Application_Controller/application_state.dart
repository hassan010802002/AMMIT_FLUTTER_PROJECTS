part of 'application_cubit.dart';

abstract class ApplicationState extends Equatable {
  const ApplicationState();
}

class ApplicationInitial extends ApplicationState {
  @override
  List<Object> get props => [];
}

class IdleApplicationStep extends ApplicationState {
  @override
  List<Object> get props => [];
}
class UpdatingApplicationStep extends ApplicationState {
  @override
  List<Object> get props => [];
}

class IdleJobWorkType extends ApplicationState {
  @override
  List<Object> get props => [];
}
class SelectedJobWorkType extends ApplicationState {
  @override
  List<Object> get props => [];
}

class JobApplyIdleCVUploading extends ApplicationState {
  @override
  List<Object> get props => [];
}
class JobApplyCVUploaded extends ApplicationState {
  @override
  List<Object> get props => [];
}
