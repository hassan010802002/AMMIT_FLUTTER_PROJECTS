part of 'messages_controller_cubit.dart';

abstract class MessagesControllerState extends Equatable {
  const MessagesControllerState();
}

class MessagesControllerInitial extends MessagesControllerState {
  @override
  List<Object> get props => [];
}

class MainMessagesState extends MessagesControllerState {
  @override
  List<Object> get props => [];
}
class UnReadMessagesState extends MessagesControllerState {
  @override
  List<Object> get props => [];
}

class MessagesSearching extends MessagesControllerState {
  @override
  List<Object> get props => [];
}
class MessagesIdleSearch extends MessagesControllerState {
  @override
  List<Object> get props => [];
}
