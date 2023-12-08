part of 'contacts_cubit.dart';

@immutable
abstract class ContactsState {}

class ContactsInitial extends ContactsState {}

class SuccessContactsInsertion extends ContactsState{}
class FailureContactsInsertion extends ContactsState{}

class SuccessContactsDeletion extends ContactsState{}
class FailureContactsDeletion extends ContactsState{}

class SuccessContactsUpdating extends ContactsState{}
class FailureContactsUpdating extends ContactsState{}
class LoadingContactsUpdating extends ContactsState{}


class NavigationState extends ContactsState{}
