//this is the assignment NO# 3 in Dart ...........!!!!!!!!!!!!
/**
 * the assignment contains a function to insert a Number Values in a List,...
 * I make a two Lists and through the following program 
 * I Listout the Interception between them.......
 */

import 'dart:io';

void main(List<String> args) {
  Iterable<num>? myIterablrList = <num>[];
  List<num>? myFirstList = myIterablrList.toList();
  myFirstList = Fun(myFirstList, listFun);
  myFirstList!.sort();
  print("The First List :\n$myFirstList \n");
  List<num>? mySecondList = myIterablrList.toList();
  mySecondList = Fun(mySecondList, listFun);
  mySecondList!.sort();
  print("The Second List :\n$mySecondList\n");
  print(
      "!!!!!!!!!!!!!_______________the Interception Between the two Lists ________________!!!!!!!!!!!!!!");
  int count = 1;
  List<num>? firstSet = myFirstList.toSet().toList();
  List<num>? secondSet = mySecondList.toSet().toList();
  for (var i = 0; i < firstSet.length; i++) {
    for (var j = 0; j < secondSet.length; j++) {
      if (secondSet[j] == firstSet[i]) {
        print("${count++} - ${secondSet[j]}");
      } else {
        continue;
      }
    }
  }
  // for (var outer in myFirstList.toSet()) {
  //   for (var inner in mySecondList.toSet()) {
  //     if (inner == outer) {
  //       print("${i++} - $inner");
  //     } else {
  //       continue;
  //     }
  //   }
  // }
  print("\n !!!!!!!!!!!!!_____________END____________!!!!!!!!!!!");
}

///this a high order function I used
List<num>? Fun(List<num>? userList, Function userFun) {
  userFun(userList);
  return userList;
}

///this the Function ..........!!!!!!!!!!
List<num>? listFun(List<num>? testList) {
  print("Enter The Elements Of The Array .......!!!!!!!!");
  bool stop = true;
  String? itemInput;
  while (stop) {
    try {
      print("Enter the Array Item :");
      itemInput = stdin.readLineSync();
      if (itemInput == "") {
        stop = false;
        break;
      }
      num item = num.parse(itemInput!);
      testList!.add(item);
    } catch (e) {
      print("Bad Format Item ...... Please Enter A Valid Number !!!!!!!");
    }
  }
  return testList;
}
/**!!!!!!!!!!!!!!___________________END_________________!!!!!!!!!!!!!!!!!! */
//Created by : Hassan Saied Hassan