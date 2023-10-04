import 'package:firebase_auth/firebase_auth.dart';

class Authentications_Services{
  static final authentication = FirebaseAuth.instance;

  static void SignIn_Authentication(String? myEmail , String? myPassword)async{
    final UserCredential currentUser = await authentication.signInWithEmailAndPassword(email: myEmail!, password: myPassword!);
    print("User: ${currentUser.user!.email} and with ID: ${currentUser.user!.uid} SignedIn");
  }
  static  void SignUp_Authentication(String? myEmail , String? myPassword)async{
    final UserCredential currentUser = await authentication.createUserWithEmailAndPassword(email: myEmail!, password: myPassword!);
    print("User: ${currentUser.user!.email} and with ID: ${currentUser.user!.uid} SignedUp");
  }
  static  void Deleting_Authentication()async{
    print("User: ${authentication.currentUser!.email} and with ID: ${authentication.currentUser!.uid} Deleted");
    await authentication.currentUser!.delete();
  }
}