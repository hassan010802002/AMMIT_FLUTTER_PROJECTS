// ignore_for_file: non_constant_identifier_names

///Dart Assignment No: 4
///
///This Program includes an abstract class for the animals behaviours and
///I Make an Interface to Implement the Animals abstract class so the User will Enter the Data of the animal
///and it will be Previwed to him but if he entered nothing then the values will be the Default values of the Data
///which it is shown in the following code down here :________________

import 'dart:io';

abstract class Animals {
  void setName(String? theName);
  String? getName();
  void setAge(int? theAge);
  int? getAge();
  void setKind(String? theKind);
  String? getKind();
  void setNumofLegs(int? theLegs);
  int? getLegsNumbers();
  void setNumofWings(int? theWings);
  int? getWingsNumbers();
  void setNumofEyes(int? theEyes);
  int? getEyesNumbers();
  void setSize(double? theSize);
  double? getSize();
  void setColor(String? theColor);
  String? getColor();
  void setLivingPlace(String? thePlace);
  String? getLivingPlace();
  void setGender(String? theGender);
  String? getGender();
  void setHoursofSleeping(int? hoursOfSleeping);
  int? getSleepingHours();
  void ifPredator(bool? isPredator);
  bool? isItPredator();
  void ifPet(bool? isPet);
  bool? isItPet();
  void theDetails();
  void theData(
      Function animalName,
      Function animalAge,
      Function animalKind,
      Function animalNumofLegs,
      Function animalNumofWings,
      Function animalNumofEyes,
      Function animalSize,
      Function animalColor,
      Function animalLivingPlace,
      Function animalGender,
      Function animalSleepingHours,
      Function animalIsPet,
      Function animalIsPredator);
}

interface class Animal implements Animals {
  String? Name = "An animal";
  int? Age = 2;
  String? Kind = "animal";
  int? legsNumbers = 2;
  int? wingsNumbers = 0;
  int? eyesNumbers = 2;
  double? Size = 2.5;
  String? Color = "Gray";
  String? Place = "Mountains";
  String? Gender = "Male";
  int? sleepingHours = 5;
  bool? isPredator = false;
  bool? isPet = true;

  Animal() {
    theData(
        setName,
        setAge,
        setKind,
        setColor,
        setSize,
        setGender,
        setNumofLegs,
        setNumofWings,
        setNumofEyes,
        setLivingPlace,
        setHoursofSleeping,
        ifPet,
        ifPredator);
    theDetails();
  }

  @override
  int? getAge() {
    return Age;
  }

  @override
  String? getColor() {
    return Color;
  }

  @override
  String? getGender() {
    return Gender;
  }

  @override
  int? getSleepingHours() {
    return sleepingHours;
  }

  @override
  String? getKind() {
    return Kind;
  }

  @override
  String? getLivingPlace() {
    return Place;
  }

  @override
  String? getName() {
    return Name;
  }

  @override
  int? getEyesNumbers() {
    return eyesNumbers;
  }

  @override
  int? getLegsNumbers() {
    return legsNumbers;
  }

  @override
  int? getWingsNumbers() {
    return wingsNumbers;
  }

  @override
  double? getSize() {
    return Size;
  }

  @override
  void ifPet(bool? isPet) {
    print(
        "\n!!!!!!!!!!!___________Is Your Animal A Pet__________!!!!!!!!!!!!!!!");
    String? result = stdin.readLineSync();
    if (result!.contains("yes") || result.contains("y")) {
      isPet = true;
      this.isPet = isPet;
    } else {
      isPet = false;
      this.isPet = isPet;
    }
  }

  @override
  void ifPredator(bool? isPredator) {
    print(
        "\n!!!!!!!!!!!___________Is Your Animal A Predator__________!!!!!!!!!!!!");
    String? result = stdin.readLineSync();
    if (result!.contains("yes") || result.contains("y")) {
      isPredator = true;
      this.isPredator = isPredator;
    } else {
      isPredator = false;
      this.isPredator = isPredator;
    }
  }

  @override
  bool? isItPet() {
    return isPet;
  }

  @override
  bool? isItPredator() {
    return isPredator;
  }

  @override
  void setAge(int? theAge) {
    print(
        "\n!!!!!!!!!!!!____________Please Enter the Age of the Animal____________!!!!!!!!!!!!!");
    String? result = stdin.readLineSync();
    theAge = int.tryParse(result!);
    Age = theAge ?? Age;
  }

  @override
  void setColor(String? theColor) {
    print(
        "\n!!!!!!!!!!_____________Please Enter the Color of the Animal____________!!!!!!!!!!!");
    theColor = stdin.readLineSync();
    Color = theColor!.isEmpty ? Color : theColor;
  }

  @override
  void setGender(String? theGender) {
    print(
        "\n!!!!!!!!!!!!______________Please Enter the Gender of the Animal___________!!!!!!!!!!!!!");
    theGender = stdin.readLineSync();
    Gender = theGender!.isEmpty ? Gender : theGender;
  }

  @override
  void setHoursofSleeping(int? hoursOfSleeping) {
    print(
        "\n!!!!!!!!!!!___________Please Enter the Sleeping Hours of the Animal__________!!!!!!!!!!!!!");
    String? result = stdin.readLineSync();
    hoursOfSleeping = int.tryParse(result!);
    sleepingHours = hoursOfSleeping ?? sleepingHours;
  }

  @override
  void setKind(String? theKind) {
    print(
        "\n!!!!!!!!!!___________Please Enter the Kind of the Animal___________!!!!!!!!!!!");
    theKind = stdin.readLineSync();
    Kind = theKind!.isEmpty ? Kind : theKind;
  }

  @override
  void setLivingPlace(String? thePlace) {
    print(
        "\n!!!!!!!!__________Please Enter the Living Place of the Animal________!!!!!!!!!!");
    thePlace = stdin.readLineSync();
    Place = thePlace!.isEmpty ? Place : thePlace;
  }

  @override
  void setName(String? theName) {
    print(
        "\n\n!!!!!!!!!!!___________Please Enter the Name of the Animal___________!!!!!!!!!!!");
    theName = stdin.readLineSync();
    Name = theName!.isEmpty ? Name : theName;
  }

  @override
  void setNumofEyes(int? theEyes) {
    print(
        "\n!!!!!!!!!!___________Please Enter the Number of the Eyes____________!!!!!!!!!!");
    String? result = stdin.readLineSync();
    theEyes = int.tryParse(result!);
    eyesNumbers = theEyes ?? eyesNumbers;
  }

  @override
  void setNumofLegs(int? theLegs) {
    print(
        "\n!!!!!!!!!!___________Please Enter the Number of the Legs____________!!!!!!!!!!");
    String? result = stdin.readLineSync();
    theLegs = int.tryParse(result!);
    legsNumbers = theLegs ?? legsNumbers;
  }

  @override
  void setNumofWings(int? theWings) {
    print(
        "\n!!!!!!!!!!___________Please Enter the Number of the Wings____________!!!!!!!!!!");
    String? result = stdin.readLineSync();
    theWings = int.tryParse(result!);
    wingsNumbers = theWings ?? wingsNumbers;
  }

  @override
  void setSize(double? theSize) {
    print(
        "\n!!!!!!!!!!___________Please Enter the Size of the Animal____________!!!!!!!!!!");
    String? result = stdin.readLineSync();
    theSize = double.tryParse(result!);
    Size = theSize ?? Size;
  }

  @override
  void theData(
      Function animalName,
      Function animalAge,
      Function animalKind,
      Function animalColor,
      Function animalSize,
      Function animalGender,
      Function animalNumofLegs,
      Function animalNumofWings,
      Function animalNumofEyes,
      Function animalLivingPlace,
      Function animalSleepingHours,
      Function animalIsPet,
      Function animalIsPredator) {
    print(
        "!!!!!!!!!!!!!!!!________________Please Enter the Data of the Animal_______________!!!!!!!!!!!!!!!!!");
    print(
        "__________________________________________________________________________________________________________");
    animalName(Name);
    animalAge(Age);
    animalKind(Kind);
    animalColor(Color);
    animalSize(Size);
    animalGender(Gender);
    animalNumofEyes(eyesNumbers);
    animalNumofLegs(legsNumbers);
    animalNumofWings(wingsNumbers);
    animalSleepingHours(sleepingHours);
    animalLivingPlace(Place);
    animalIsPet(isPet);
    animalIsPredator(isPredator);
  }

  @override
  void theDetails() {
    print(
        "\n\n_________________________________________________________________________________________________________");
    print(
        "\n!!!!!!!!!!!!!______________The Details of the Animal___________!!!!!!!!!!!!!");
    print("\nThe Name is : ${getName()}");
    print("\nThe Age is : ${getAge()}");
    print("\nThe Kind is : ${getKind()}");
    print("\nThe Color is : ${getColor()}");
    print("\nThe Size is : ${getSize()}");
    print("\nThe Gender is : ${getGender()}");
    print("\nThe Eyes Number is : ${getEyesNumbers()}");
    print("\nThe Legs Number is : ${getLegsNumbers()}");
    print("\nThe Wings Number is : ${getWingsNumbers()}");
    print("\nThe Sleeping Hour of the Animal is : ${getSleepingHours()}");
    print("\nThe Living Place of the Animal is : ${getLivingPlace()}");
    print("\nIs The Animal is a Pet : ${isItPet()}");
    print("\nIs The Animal is a Predator : ${isItPredator()}");
    print(
        "\n\n!!!!!!!!!!!!!!!!________________________END________________________!!!!!!!!!!!!!!!!!");
  }
}

void main(List<String> arguments) {
  Animal OBJ1 = Animal();
}

///Created by : Hassan Saied Hassan__________
///Thanks!!!!!!!!!!
