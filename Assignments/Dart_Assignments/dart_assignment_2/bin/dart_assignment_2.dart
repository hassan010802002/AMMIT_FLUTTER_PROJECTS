//this is a Dart Assignment 2......
// ignore_for_file: non_constant_identifier_names
import 'dart:io';
import 'dart:js_interop';

/// it contains 2 parts(capitalizing every first letter in each word in an entered sentence , search method in a list and find a record)
void main(List<String> arguments) {
  /**first part in the assignment........!!!!!!!!! */
  print(
      "!!!!!!!!!!.............Please Enter a The Name in A Sentence.........!!!!!!!!!");
  var sentence = stdin.readLineSync();
  if (sentence!.isNotEmpty) {
    var newName = getName(sentence);
    print(newName);
  } else {
    print("!!!!!!!!!!........Nothing Entered Please Try Again.......!!!!!!!!!");
  }

/**_______________________________________________________________________________________________ */

  /**the second part in the assignment .......!!!!!!!!!!! */

  var idKey = "id",
      nameKey = "name",
      ageKey = "age",
      emailKey = "email",
      phoneKey = "phone",
      addressKey = "address";
  String? nameValue, ageValue, emailValue, phoneValue, addressValue;
  int idValue = 0;
  List<Map<String, dynamic>>? data = [];
  RegExp exp = RegExp(r'\w*');
  Map<String, dynamic>? tempData;
  while (true) {
    print("!!!!!!!.......Enter Your Name : ......!!!!!!!!!!");
    nameValue = stdin.readLineSync();
    tempData!.addAll({
      idKey: idValue++,
      nameKey:
          nameValue!.isNotEmpty && exp.hasMatch(nameValue) ? nameValue : null
    });
    print("!!!!!!!.......Enter Your Age : ......!!!!!!!!!!");
    ageValue = stdin.readLineSync();
    exp = RegExp(r'\d{2}');
    tempData.addAll({
      ageKey: ageValue!.isNotEmpty && exp.hasMatch(ageValue) ? ageValue : null
    });
    print("!!!!!!!.......Enter Your email : ......!!!!!!!!!!");
    emailValue = stdin.readLineSync();
    exp = RegExp(r'\w*\d*@gmail.com');
    tempData.addAll({
      emailKey:
          emailValue!.isNotEmpty && exp.hasMatch(emailValue) ? emailValue : null
    });
    print("!!!!!!!.......Enter Your phone : ......!!!!!!!!!!");
    phoneValue = stdin.readLineSync();
    exp = RegExp(r'201[1|2|5]\d{8}');
    tempData.addAll({
      phoneKey:
          phoneValue!.isNotEmpty && exp.hasMatch(phoneValue) ? phoneValue : null
    });
    print("!!!!!!!.......Enter Your address : ......!!!!!!!!!!");
    addressValue = stdin.readLineSync();
    exp = RegExp(r'\w*');
    tempData.addAll({
      addressKey: addressValue!.isNotEmpty && exp.hasMatch(addressValue)
          ? addressValue
          : null
    });
    if (nameValue.isNull &&
        ageValue.isNull &&
        emailValue.isNull &&
        phoneValue.isNull &&
        addressValue.isNull) {
      tempData.clear();
      break;
    } else {
      data.add(tempData);
      tempData.clear();
    }
  }
  print("Enter Your Name:.....");
  String? searchName = stdin.readLineSync();
  search(data, searchName);
}

String? getName(String? WholeSentence) {
  ///this is the first way.........!!!!!!
  List<String>? words =
      WholeSentence!.isNotEmpty ? WholeSentence.split(" ") : [];
  List<String>? letters = [];
  String? newSentence;
  int index = 0;
  if (words.isNotEmpty) {
    for (var element in words) {
      letters.addAll(element.split(""));
      letters[0] = letters[0].toUpperCase();
      for (var i = 1; i < letters.length; i++) {
        letters[i] = letters[i].toLowerCase();
      }
      newSentence = "${letters.join()} ";
      words[index] = newSentence;
      letters.clear();
      index++;
    }
  }

  ///this is a second way ..........!!!!!!!!!!!!!
  ///Just remove the comments from the following code and comment the previous ......!!!!!!!
  // words.forEach((element) {
  //   newSentence = element.substring(0, 1).toUpperCase() + element.substring(1).toLowerCase();
  //   words[index] = "$newSentence ";
  //   index++;
  // });
  WholeSentence = WholeSentence.isNotEmpty ? words.join().toString() : null;
  return WholeSentence;
}

void search(List<Map<String, dynamic>>? myData, String? name,
    {String? id, String? email, String? phone}) {
  print("!!!!!!!!!!!_______________Your Data________________!!!!!!!!!!!!!");
  for (var element in myData!) {
    if (element.containsValue(name) ||
        element.containsValue(email) ||
        element.containsValue(phone) ||
        element.containsValue(id)) {
      print("The ID is : ${element['id']}");
      print("The Name is : ${element['name']}");
      print("The Email is : ${element['email']}");
      print("The Age is : ${element['age']}");
      print("The Phone is : ${element['phone']}");
      print("The Address is : ${element['address']}");
    } else {
      print("There No Such a Record in the List Containing This Name");
    }
  }
}
/**created by : Hassan Saied Hassan */
/**!!!!!!!!!!!__________________END____________________!!!!!!!!!!! */