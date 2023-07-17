//this is a Dart Assignment 2......
// ignore_for_file: non_constant_identifier_names
import 'dart:io';

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
