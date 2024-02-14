// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Controllers/notification_controller_cubit.dart';
import 'UI/Views/notification_main_view.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({ super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  NotificationControllerCubit? notificationControllerCubit;

  @override
  void initState() {
    notificationControllerCubit = NotificationControllerCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => notificationControllerCubit!,
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: NotificationMainView(notificationControllerCubit: notificationControllerCubit!),
        ),
      ),
    );
  }
}


