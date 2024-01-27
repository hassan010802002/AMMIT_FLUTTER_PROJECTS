part of 'base_cubit.dart';

abstract class BaseState extends Equatable {
  const BaseState();
}

class HomeBase extends BaseState {
  @override
  List<Object> get props => [];
}

class SavedBase extends BaseState{
  @override
  List<Object?> get props => [];
}
class MessagesBase extends BaseState{
  @override
  List<Object?> get props => [];
}
class ApplicationBase extends BaseState{
  @override
  List<Object?> get props => [];
}
class ProfileBase extends BaseState{
  @override
  List<Object?> get props => [];
}
