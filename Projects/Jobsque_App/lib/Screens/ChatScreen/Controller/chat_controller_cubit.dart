import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'chat_controller_state.dart';

class ChatControllerCubit extends Cubit<ChatControllerState> {
  ChatControllerCubit() : super(ChatControllerInitial());
}
