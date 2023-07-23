import 'dart:io';

//this is another dart assignment NO:2 _______________!!!!!!!!!!!!!
///
///in this Program I allow the User to Enter some comma separated numbers and Print these Numbers
///separated and indexed while including if the user while entering the numbers if these numbers
///contains any letters or other Strings like(spaces or commas or any thing else rather than numbers)
///it will be stored in the list as a null value and will not be printed
///

void main(List<String> args) {
  print(
      "!!!!!!!!___________Enter Some Comma Separated Numbers ___________!!!!!!!!!");
  String? number = stdin.readLineSync();
  List<String>? myNumbers = [];
  List<num?>? theNumbers = [];
  if (number!.isEmpty) {
    print("Nothing Entered Please Try Again");
  } else {
    if (number.endsWith(" ") || number.endsWith(",")) {
      number = number.substring(0, number.length - 1);
    }
    myNumbers = number.split(",");
    for (var element in myNumbers) {
      if (element.endsWith(" ")) {
        element = element.substring(0, element.length - 1);
      }
      theNumbers.add(num.tryParse(element));
    }
    print("My Numbers List _______ : $theNumbers");
    int i = 1;
    String tupleNumbers ;
    theNumbers.removeWhere((element) => element == null);
    for (var element in theNumbers) {
      print("${i++} - $element");
      // tupleNumbers += "'$element' , ";
    }
    // tupleNumbers += ")";
    // tupleNumbers = tupleNumbers.substring(0, tupleNumbers.length - 3);
    // tupleNumbers += ")";
    tupleNumbers = "(${theNumbers.toString().substring(1 , theNumbers.toString().length-1)})";
    print("My Numbers Tuple _______ : $tupleNumbers");
  }
}
///!!!!!!!!!!!!___________________END____________________!!!!!!!!!!!!!!!
///created by : Hassan Saied Hassan