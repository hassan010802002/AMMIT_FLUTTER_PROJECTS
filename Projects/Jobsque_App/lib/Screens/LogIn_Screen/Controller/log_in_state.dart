part of 'log_in_cubit.dart';

@immutable
abstract class LogInState {}

class LogInInitial extends LogInState {}

class EmptyUserEntranceState extends LogInState{}
class UserEntranceState extends LogInState{}

class InitialUserPasswordLength extends LogInState{}
class WrongUserPasswordLength extends LogInState{}
class CorrectUserPasswordLength extends LogInState{}


class InitialLogInState extends LogInState{}
class FinalLogInState extends LogInState{}
class FailureLogInState extends LogInState{}
