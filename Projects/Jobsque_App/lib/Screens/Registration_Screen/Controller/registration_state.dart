part of 'registration_cubit.dart';

@immutable
abstract class RegistrationState {}

class RegistrationInitial extends RegistrationState {}

class EmptyUserEntranceState extends RegistrationState{}
class UserEntranceState extends RegistrationState{}

class InitialUserPasswordLength extends RegistrationState{}
class WrongUserPasswordLength extends RegistrationState{}
class CorrectUserPasswordLength extends RegistrationState{}

class InitialRegistrationState extends RegistrationState{}
class FinalRegistrationState extends RegistrationState{}
class FailureRegistrationState extends RegistrationState{}

