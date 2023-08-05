// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_field, unused_local_variable

///the Dart Assignment No:5
///
///in the following Application I Created three abstract classes (Shape , TwoDimensionalShapes , ThreeDimensionalShapes)
///such that the two classes (TwoDimensionalShapes , ThreeDimensionalShapes) implemnting the class(Shape)
///and there is a two additional classes to implemnt the two previous class which are (Circle , Sphere)
///they are responsiple for assigning the radius for each of the circle and the sphere and calculating the
///pereimeter and the area for the circle and also in addition to calculating the volume of the sphere also

import 'dart:io';

abstract class Shape {
  String? _name;
  int? _numberOfDimensions;

  void setName(String? theName);
  String? getName();
  void setDimensionNumbers(int? dimensions);
  int? getDimensionNumbers();
}

abstract class TwoDimensionalShapes extends Shape {
  late final double? _radius;
  late final double? _pereimeter;
  late final double? _area;

  void setRadius(double? theRadius);
  double? getRadius();
  void setPereimeter();
  double? getPereimeter();
  void setArea();
  double? getArea();
  void Data(
    final double? radius,
    String? name,
    int? dimensionsNumber,
    Function theName,
    Function theDimensionsNumber,
    Function theRadius,
    Function thePereimeter,
    Function theArea,
  );
  void Details();
}

abstract class ThreeDimensionalShapes extends Shape {
  late final double? _radius;
  late final double? _pereimeter;
  late final double? _area;
  late final double? _volume;

  void setRadius(double? theRadius);
  double? getRadius();
  void setPereimeter();
  double? getPereimeter();
  void setArea();
  double? getArea();
  void setVolume();
  double? getVolume();
  void Data(
      final double? radius,
      String? name,
      int? dimensionsNumber,
      Function theName,
      Function theDimensionsNumber,
      Function theRadius,
      Function thePereimeter,
      Function theArea,
      Function theVolume);
  void Details();
}

interface class Circle implements TwoDimensionalShapes {
  @override
  String? _name;

  @override
  int? _numberOfDimensions;

  @override
  double? _radius;

  @override
  double? _pereimeter;

  @override
  double? _area;
  static const double pi = 3.14;

  Circle() {
    Data(
        this._radius,
        this._name,
        this._numberOfDimensions,
        this.setName,
        this.setDimensionNumbers,
        this.setRadius,
        this.setPereimeter,
        this.setArea);
    Details();
  }

  @override
  void setName(String? theName) {
    print("\n____________________________________________________________\n");
    print(
        "!!!!!!!!!_____________Enter the Name of the Shape : ______________!!!!!!!!!");
    theName = stdin.readLineSync();
    this._name = theName!.isNotEmpty ? theName : "Circle";
  }

  @override
  void setDimensionNumbers(int? dimensions) {
    print("\n_____________________________________________________________\n");
    print(
        "!!!!!!!!!_____________Enter the Dimensions of the Shape : ______________!!!!!!!!!");
    dimensions = int.tryParse(stdin.readLineSync()!);
    this._numberOfDimensions = dimensions ?? 2;
  }

  @override
  void setRadius(double? theRadius) {
    print("\n_____________________________________________________________\n");
    print(
        "!!!!!!!!___________Enter the Radius of the Circle : ____________!!!!!!!!!");
    theRadius = double.tryParse(stdin.readLineSync()!);
    this._radius = theRadius ?? 10.0;
  }

  @override
  void setPereimeter() {
    this._pereimeter = 2 * pi * this.getRadius()!;
  }

  @override
  void setArea() {
    this._area = pi * this.getRadius()! * this.getRadius()!;
  }

  @override
  String? getName() {
    return this._name;
  }

  @override
  int? getDimensionNumbers() {
    return this._numberOfDimensions;
  }

  @override
  double? getRadius() {
    return this._radius;
  }

  @override
  double? getPereimeter() {
    return this._pereimeter;
  }

  @override
  double? getArea() {
    return this._area;
  }

  @override
  void Data(
      double? radius,
      String? name,
      int? dimensionsNumber,
      Function theName,
      Function theDimensionsNumber,
      Function theRadius,
      Function thePereimeter,
      Function theArea) {
    theName(name);
    theDimensionsNumber(dimensionsNumber);
    theRadius(radius);
    thePereimeter();
    theArea();
  }

  @override
  void Details() {
    print("\n_____________________________________________________________\n");
    print(
        "!!!!!!!!!!!!______________The Shape Name is : ${this.getName()} ______________!!!!!!!!!!!!");
    print("\n_____________________________________________________________\n");
    print(
        "!!!!!!!!!!!!______________The Shape Dimensions Numbers is : ${this.getDimensionNumbers()} ______________!!!!!!!!!!!!");
    print("\n_____________________________________________________________\n");
    print(
        "!!!!!!!!!!!!______________The Circle Radius is : ${this.getRadius()} m ______________!!!!!!!!!!!!");
    print("\n_____________________________________________________________\n");
    print(
        "!!!!!!!!!!!!______________The Circle Pereimeter is : ${this.getPereimeter()} m ______________!!!!!!!!!!!!");
    print("\n_____________________________________________________________\n");
    print(
        "!!!!!!!!!!!!______________The Circle Area is : ${this.getArea()} m^2 ______________!!!!!!!!!!!!");
    print("\n_____________________________________________________________\n");
  }
}

interface class Sphere implements ThreeDimensionalShapes {
  @override
  String? _name;

  @override
  int? _numberOfDimensions;

  @override
  double? _radius;

  @override
  double? _pereimeter;

  @override
  double? _area;

  @override
  double? _volume;

  static const double pi = 3.14;

  Sphere() {
    Data(
        this._radius,
        this._name,
        this._numberOfDimensions,
        this.setName,
        this.setDimensionNumbers,
        this.setRadius,
        this.setPereimeter,
        this.setArea,
        this.setVolume);
    Details();
  }

  @override
  void setName(String? theName) {
    print("\n____________________________________________________________\n");
    print(
        "!!!!!!!!!_____________Enter the Name of the Shape : ______________!!!!!!!!!");
    theName = stdin.readLineSync();
    this._name = theName!.isNotEmpty ? theName : "Sphere";
  }

  @override
  void setDimensionNumbers(int? dimensions) {
    print("\n_____________________________________________________________\n");
    print(
        "!!!!!!!!!_____________Enter the Dimensions of the Shape : ______________!!!!!!!!!");
    dimensions = int.tryParse(stdin.readLineSync()!);
    this._numberOfDimensions = dimensions ?? 3;
  }

  @override
  void setRadius(double? theRadius) {
    print("\n_____________________________________________________________\n");
    print(
        "!!!!!!!!___________Enter the Radius of the Sphere : ____________!!!!!!!!!");
    theRadius = double.tryParse(stdin.readLineSync()!);
    this._radius = theRadius ?? 35.8;
  }

  @override
  void setPereimeter() {
    this._pereimeter = 2 * pi * this.getRadius()!;
  }

  @override
  void setArea() {
    this._area = 4 * pi * this.getRadius()! * this.getRadius()!;
  }

  @override
  void setVolume() {
    this._volume = (4 / 3) *
        pi *
        this.getRadius()! *
        this.getRadius()! *
        this.getRadius()!;
  }

  @override
  String? getName() {
    return this._name;
  }

  @override
  int? getDimensionNumbers() {
    return this._numberOfDimensions;
  }

  @override
  double? getRadius() {
    return this._radius;
  }

  @override
  double? getPereimeter() {
    return this._pereimeter;
  }

  @override
  double? getArea() {
    return this._area;
  }

  @override
  double? getVolume() {
    return this._volume;
  }

  @override
  void Data(
      double? radius,
      String? name,
      int? dimensionsNumber,
      Function theName,
      Function theDimensionsNumber,
      Function theRadius,
      Function thePereimeter,
      Function theArea,
      Function theVolume) {
    theName(name);
    theDimensionsNumber(dimensionsNumber);
    theRadius(radius);
    thePereimeter();
    theArea();
    theVolume();
  }

  @override
  void Details() {
    print("\n_____________________________________________________________\n");
    print(
        "!!!!!!!!!!!!______________The Shape Name is : ${this.getName()} ______________!!!!!!!!!!!!");
    print("\n_____________________________________________________________\n");
    print(
        "!!!!!!!!!!!!______________The Shape Dimensions Numbers is : ${this.getDimensionNumbers()} ______________!!!!!!!!!!!!");
    print("\n_____________________________________________________________\n");
    print(
        "!!!!!!!!!!!!______________The Sphere Radius is : ${this.getRadius()} m ______________!!!!!!!!!!!!");
    print("\n_____________________________________________________________\n");
    print(
        "!!!!!!!!!!!!______________The Sphere Pereimeter is : ${this.getPereimeter()} m ______________!!!!!!!!!!!!");
    print("\n_____________________________________________________________\n");
    print(
        "!!!!!!!!!!!!______________The Sphere Area is : ${this.getArea()} m^2 ______________!!!!!!!!!!!!");
    print("\n_____________________________________________________________\n");
    print(
        "!!!!!!!!!!!!______________The Sphere Volume is : ${this.getVolume()} m^3 ______________!!!!!!!!!!!!");
    print("\n_____________________________________________________________\n");
  }
}

void main(List<String> arguments) {
  print("\n_____________________________________________________________\n");
  print(
      "!!!!!!!!________Which Shape You Want to Call (Circle or Sphere)_________!!!!!!!!!!");
  String? result = stdin.readLineSync();
  if (result!.contains("circle")) {
    Circle c1 = Circle();
  } else if (result.contains("sphere")) {
    Sphere s1 = Sphere();
  } else {
    print(
        "!!!!!!!!!!____________There is No Such a Shape in the Program____________!!!!!!!!!!");
    print("\n_____________________________________________________________\n");
  }
}

///_____________________END_______________________
///Generated by : Hassan Saied Hassan
///
///Done and thanks for Reviewing....!!!!!!!!!!!!!