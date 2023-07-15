void main(List<String> arguments) {
//Question 1:-
//**
//there are four ways to declare a variable in Dart :
//*/
//************************************************************************* */
//**
//1:(by using a Specified DataType and an initial value for the variable) :-
//*/
  String name = "Hassan Saied Hassan";
//**
//2:(by using the (var)DataType for the variable without an initial value) :-
//*/
  var name2;
//**
//3:(by using the Null Safety DataType by this operator(?) for the variable without an initial value) :-
//*/
  String? name3;
//**
//4:(by using the Late DataType for the variable without an initial value) :-
//*/
  late String name4;
//Question 2:-
//**
//Yes you can daclare a variable with a null value in three ways :-
//****************************************************************************************** */
//1:(the first way by using the Null Safety DataType by this operator(?) for the variable without an initial value):-
  String? x;
  print(x);
//******************************************************************************************* */
//2:(the second way by using the dynamic DataType for the variable without an initial value):-
  dynamic y;
  print(y);
//****************************************************************************************** */
//3:(the second way by using the var DataType for the variable but without an initial value):-
  var z;
  print(z);
// */
//Question 3:-
//**
//you can convert a variable from one type to another in Dart in one way :-
//(by using the casting operation and check the runtimeType for assurrance):-
  int n = 50;
  print(n.toString().runtimeType);
//*/
//Question 4:-
//**the following program is to print the data of each user from their own map

  Map<String, Map<String, dynamic>> m = {
    "Stud1": {
      "name": "Hassan",
      "Age": 21,
      "Salary": 2000,
      "phone": "+201152241066",
      "Subjects": [
        "Android",
        "Machine Learning",
        "Security",
        "SoftWare2",
        "Algorithm",
        "KBS"
      ]
    },
    "Stud2": {
      "name": "Ahmed",
      "Age": 25,
      "Salary": 2500,
      "phone": "+201212345678",
      "Subjects": [
        "Android",
        "Machine Learning",
        "Security",
        "SoftWare2",
        "Algorithm",
        "KBS"
      ]
    },
    "Stud3": {
      "name": "Ali",
      "Age": 30,
      "Salary": 1500,
      "phone": "+201587654321",
      "Subjects": [
        "Android",
        "Machine Learning",
        "Security",
        "SoftWare2",
        "Algorithm",
        "KBS"
      ]
    },
    "Stud4": {
      "name": "Mohammed",
      "Age": 23,
      "Salary": 1000,
      "phone": "+2010012547863",
      "Subjects": [
        "Android",
        "Machine Learning",
        "Security",
        "SoftWare2",
        "Algorithm",
        "KBS"
      ]
    },
    "Stud5": {
      "name": "Ibrahim",
      "Age": 28,
      "Salary": 3000,
      "phone": "+201122334455",
      "Subjects": [
        "Android",
        "Machine Learning",
        "Security",
        "SoftWare2",
        "Algorithm",
        "KBS"
      ]
    }
  };
  m.forEach((key, value) {
    print("The student : $key Data is :");
    var S = value["Salary"];
    value.update("Salary", (value) => value += 1000);
    value.forEach((K, V) {
      if (K == "Salary") {
        print("The $K before Updating is : $S");
      }
      print("The $K : $V");
    });
    print("!!!!!!!!!!ــــــــــــــــــــــــــــــــــــــــــ!!!!!!!!!");
  });
  print("!!!!!!!!!End!!!!!!!!!");
// */

//The End of The Assignment ********************.
//Created By : Hassan Saied Hassan
}
