import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'notification_controller_state.dart';

class NotificationControllerCubit extends Cubit<NotificationControllerState> {
  bool isMainView = false;

  NotificationControllerCubit() : super(NotificationControllerInitial()) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        isMainView = true;
        emit(NotificationMainViewState());
      },
    );
  }
}
