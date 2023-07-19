// ignore_for_file: non_constant_identifier_names
import 'dart:io';

//this is a Dart Assignment 2......
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
  List<Map<String, dynamic>>? userData = [];
  RegExp exp = RegExp(r'\w*');
  Map<String, dynamic>? tempData = {};
  while (true) {
    print(
        "!!!!!!!!!_____________Enter the Data of the User: __________!!!!!!!!!!!\n");
    print("!!!!!!!.......Enter Your Name : ......!!!!!!!!!!");
    nameValue = stdin.readLineSync();
    tempData.addAll({
      idKey: idValue++,
      nameKey: nameValue!.isNotEmpty && exp.hasMatch(nameValue) ? nameValue : ""
    });
    print("!!!!!!!.......Enter Your Age : ......!!!!!!!!!!");
    ageValue = stdin.readLineSync();
    exp = RegExp(r'\d{2}');
    tempData.addAll({
      ageKey: ageValue!.isNotEmpty && exp.hasMatch(ageValue) ? ageValue : ""
    });
    print("!!!!!!!.......Enter Your email : ......!!!!!!!!!!");
    emailValue = stdin.readLineSync();
    exp = RegExp(r'\w*\d*@gmail.com');
    tempData.addAll({
      emailKey:
          emailValue!.isNotEmpty && exp.hasMatch(emailValue) ? emailValue : ""
    });
    print("!!!!!!!.......Enter Your phone : ......!!!!!!!!!!");
    phoneValue = stdin.readLineSync();
    exp = RegExp(r'\+201[1|2|5]\d{8}');
    tempData.addAll({
      phoneKey:
          phoneValue!.isNotEmpty && exp.hasMatch(phoneValue) ? phoneValue : ""
    });
    print("!!!!!!!.......Enter Your address : ......!!!!!!!!!!");
    addressValue = stdin.readLineSync();
    exp = RegExp(r'\w*');
    tempData.addAll({
      addressKey: addressValue!.isNotEmpty && exp.hasMatch(addressValue)
          ? addressValue
          : ""
    });
    if (nameValue.isEmpty &&
        ageValue.isEmpty &&
        emailValue.isEmpty &&
        phoneValue.isEmpty &&
        addressValue.isEmpty) {
      tempData.clear();
      break;
    } else {
      print("This is The Record You Entered : $tempData \n");
      userData.add(Map<String, dynamic>.of(tempData));
      tempData.clear();
    }
  }

  print(userData);
  print("Enter Your Name:.....");
  String? searchData = stdin.readLineSync();
  String? searchName = searchData!.isNotEmpty ? searchData : "";
  print("Enter Your Id:......");
  searchData = stdin.readLineSync();
  String? searchId = searchData!.isNotEmpty ? searchData : "";
  print("Enter Your Email:......");
  searchData = stdin.readLineSync();
  String? searchEmail = searchData!.isNotEmpty ? searchData : "";
  print("Enter Your Phone:......");
  searchData = stdin.readLineSync();
  String? searchPhone = searchData!.isNotEmpty ? searchData : "";
  search(userData, searchName.isNotEmpty ? searchName : "",
      id: searchId.isNotEmpty ? searchId : "",
      email: searchEmail.isNotEmpty ? searchEmail : "",
      phone: searchPhone.isNotEmpty ? searchPhone : "");
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

int times = 1;
void search(List<Map<String, dynamic>>? myData, String? name,
    {String? id, String? email, String? phone}) {
  if (name!.isEmpty) {
    if (times <= 3) {
      print(
          "!!!!!!!!____________Please You Must Enter Your Name at Least____________!!!!!!!!!!!");
      name = stdin.readLineSync();
      times++;
      search(myData, name);
    } else {
      print(
          "!!!!!!!!!!____________ You Didn't Enter Your Name for Three Times So The Program Has Terminated ____________!!!!!!!!!!");
      return;
    }
  }
  for (var value in myData!) {
    if (value.containsValue(name) ||
        value.containsValue(email) ||
        value.containsValue(phone) ||
        value.containsValue(id)) {
      if (name == value['name']) {
        print(
            "!!!!!!!!!!!_______________Your Data________________!!!!!!!!!!!!\n");
        print("The ID is : ${value['id']}");
        print("The Name is : ${value['name']}");
        print("The Email is : ${value['email']}");
        print("The Age is : ${value['age']}");
        print("The Phone is : ${value['phone']}");
        print("The Address is : ${value['address']}");
      }
    }
  }
}
/**created by : Hassan Saied Hassan */
/**!!!!!!!!!!!__________________END____________________!!!!!!!!!!! */