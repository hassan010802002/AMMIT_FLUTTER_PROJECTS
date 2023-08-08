// ignore_for_file: public_member_api_docs, sort_constructors_first
///Question -1 :___________________________
///1-Vehicle Hierarchy: Create a class called Vehicle with properties like brand, model, and year.
// Then, create subclasses like Car, Motorcycle, and Truck that inherit from the Vehicle class.
//  Implement specific methods or properties for each subclass that differentiate them from  each other.

class Vehicle {
  String? brand;
  String? model;
  int? year;
  Vehicle(this.brand, this.model, this.year);
}

class Car extends Vehicle {
  Car(super.brand, super.model, super.year);
  void theCar() {
    print("This is The Car Class");
  }
}

class Motorcycle extends Vehicle {
  Motorcycle(super.brand, super.model, super.year);
  void theMotorcycle() {
    print("This is The Motorcycle Class");
  }
}

class Truck extends Vehicle {
  Truck(super.brand, super.model, super.year);
  void theTruck() {
    print("This is The Truck Class");
  }
}

///Question -2 :___________________________
///2-Employee Hierarchy: Design an employee hierarchy using inheritance. Create a base class
// called Employee with properties like name, age, and salary. Then, create subclasses like
// Manager, Developer, and Designer that inherit from the Employee class. Implement specific
// methods or properties for each subclass that represent their roles or responsibilities.

class Employee {
  String? name;
  int? age;
  double? salary;
  Employee(
    this.name,
    this.age,
    this.salary,
  );
}

class Manager extends Employee {
  String? experience;

  Manager(super.name, super.age, super.salary, this.experience);

  void theManager() {
    print("I am the Manager in the Manager Class");
  }
}

class Developer extends Employee {
  String? specialization;

  Developer(super.name, super.age, super.salary, this.specialization);

  void theDeveloper() {
    print("I am the Developer in the Manager Class");
  }
}

class Designer extends Employee {
  String? kindOfDesigns;

  Designer(super.name, super.age, super.salary, this.kindOfDesigns);

  void theDesigner() {
    print("I am the Designer in the Manager Class");
  }
}

///Question -3 :___________________________
///3-Bank Account Abstraction: Implement an abstract class called BankAccount that defines
// common properties and methods for bank accounts. Then, create concrete classes like
// SavingsAccount and CheckingAccount that inherit from the BankAccount class. Implement
// specific behavior for each account type, such as interest calculation for savings accounts
// and overdraft protection for checking accounts.

abstract class BankAccount {
  String? customerName;
  String? customerPhone;
  double? balance;
  String? customerID;
  String? customerService;

  void deposit(double? value);
  double? withdraw(double? value);
}

interface class SavingsAccount implements BankAccount {
  @override
  double? balance;

  @override
  String? customerID;

  @override
  String? customerName;

  @override
  String? customerPhone;

  @override
  String? customerService;

  SavingsAccount(
      {this.customerName,
      this.customerID,
      this.customerPhone,
      this.customerService,
      this.balance});

  @override
  void deposit(double? value) {
    balance = balance! + value!;
  }

  @override
  double? withdraw(double? value) {
    balance = balance! - value!;
    return balance;
  }

  double? interestCalculation(double? interest) {
    balance = balance! + (balance! * interest!);
    return balance;
  }
}

interface class CheckingAccount implements BankAccount {
  @override
  double? balance;

  @override
  String? customerID;

  @override
  String? customerName;

  @override
  String? customerPhone;

  @override
  String? customerService;

  CheckingAccount(
      {this.customerName,
      this.customerID,
      this.customerPhone,
      this.customerService,
      this.balance});

  @override
  void deposit(double? value) {
    balance = balance! + value!;
  }

  @override
  double? withdraw(double? value) {
    balance = balance! - value!;
    return balance;
  }

  void overdraft() {
    print("\n_______________________________________________\n");
    print("Name is : $customerName");
    print("\n_______________________________________________\n");
    print("ID is : $customerID");
    print("\n_______________________________________________\n");
    print("Phone is : $customerPhone");
    print("\n_______________________________________________\n");
    print("Service is : $customerService");
    print("\n_______________________________________________\n");
    print("Your Balance is : $balance");
  }
}

///Question -4 :___________________________
///4-Geometric Shapes: Although you mentioned excluding shapes, I'll include a question
// related to advanced inheritance. Create a base class called Shape with properties and
// methods related to geometric shapes. Then, create subclasses like Rectangle, Circle, and
// Triangle that inherit from the Shape class. Implement methods to calculate area and
// perimeter for each shape, and override them in the subclasses with specific formulas.

abstract class Shape {
  double? height;
  double? width;
  double? perimeter;
  double? area;

  double? calcPerimeter();
  double? calcArea();
}

interface class Rectangle implements Shape {
  @override
  double? area;

  @override
  double? height;

  @override
  double? perimeter;

  @override
  double? width;

  Rectangle({this.height, this.width});

  @override
  double? calcArea() {
    return height! * width!;
  }

  @override
  double? calcPerimeter() {
    return (height! + width!) * 2;
  }
}

interface class Triangle implements Shape {
  @override
  double? area;

  @override
  double? height;

  @override
  double? perimeter;

  @override
  double? width;

  double? base;

  Triangle({this.height, this.width, this.base});

  @override
  double? calcArea() {
    return (0.5 * base!) * height!;
  }

  @override
  double? calcPerimeter() {
    return height! + width! + base!;
  }
}

interface class Circle implements Shape {
  @override
  double? area;

  @override
  double? height;

  @override
  double? perimeter;

  @override
  double? width;

  double? radius;

  static const pi = 3.14;

  Circle({this.radius});

  @override
  double? calcArea() {
    return (radius! * radius!) * pi;
  }

  @override
  double? calcPerimeter() {
    return 2 * pi * radius!;
  }
}

///Question -5 :___________________________
///5-Database Connection: Implement a DatabaseConnection interface that defines methods
// like connect(), disconnect(), query(), and execute(). Create concrete classes like
// MySQLConnection and PostgreSQLConnection that implement the DatabaseConnection
// interface. Each class should provide its own implementation for the interface methods.

abstract interface class DatabaseConnection {
  String? databaseName;
  String? connectionType;

  String? connect();
  String? disconnect();
  void query(String? value);
  void execute(String? query);
}

interface class MySQLConnection implements DatabaseConnection {
  @override
  String? connectionType;

  @override
  String? databaseName;

  MySQLConnection({this.databaseName, this.connectionType});

  @override
  String? connect() {
    return "this is a SQL DataBase Connection with a DataBase called ($databaseName) and with Type ($connectionType)";
  }

  @override
  String? disconnect() {
    return "the Connection with the DataBase ($databaseName) is Closed";
  }

  @override
  void execute(String? query) {
    print("Executing the query : => ($query)");
  }

  @override
  void query(String? value) {
    print("You Entered the query : => ($value)");
  }
}

interface class PostgreSQLConnection implements DatabaseConnection {
  @override
  String? connectionType;

  @override
  String? databaseName;

  PostgreSQLConnection({this.databaseName, this.connectionType});

  @override
  String? connect() {
    return "this is a Postgre SQL DataBase Connection with a DataBase called ($databaseName) and with Type ($connectionType)";
  }

  @override
  String? disconnect() {
    return "the Connection with the DataBase ($databaseName) is Closed";
  }

  @override
  void execute(String? query) {
    print("Executing the query : => ($query)");
  }

  @override
  void query(String? value) {
    print("You Entered the query : => ($value)");
  }
}

///Question -6 :___________________________
///6-Payment Gateway: Design an abstract class called PaymentGateway that declares
// methods like initiatePayment(), processPayment(), and refundPayment(). Create concrete
// classes like PayPalGateway and StripeGateway that extend the PaymentGateway class. Each
// class should provide its own implementation for the abstract methods.

abstract class PaymentGateway {
  String? paymentName;
  String? paymentKind;
  double? paymentValue;

  String? initiatePayment(String? payName, String? payKind);
  String? processPayment(String? payName, double? payValue);
  String? refundPayment(String? payName, String? payKind);
}

interface class PayPalGateway implements PaymentGateway {
  @override
  String? paymentName;

  @override
  String? paymentKind;

  @override
  double? paymentValue;

  PayPalGateway({this.paymentName, this.paymentKind, this.paymentValue});

  @override
  String? initiatePayment(String? payName, String? payKind) {
    paymentName = payName;
    paymentKind = payKind;
    return "the Payment ($paymentName) with Kind ($paymentKind) is Initiated.!!!!!!";
  }

  @override
  String? processPayment(String? payName, double? payValue) {
    paymentValue = payValue;
    return "the Payment ($paymentName) is Processing with Value ($paymentValue)";
  }

  @override
  String? refundPayment(String? payName, String? payKind) {
    return "the Payment ($payName) with Kind ($payKind) is refunded";
  }
}

interface class StripeGateway implements PaymentGateway {
  @override
  String? paymentName;

  @override
  String? paymentKind;

  @override
  double? paymentValue;

  StripeGateway({this.paymentName, this.paymentKind, this.paymentValue});

  @override
  String? initiatePayment(String? payName, String? payKind) {
    paymentName = payName;
    paymentKind = payKind;
    return "the Payment ($paymentName) with Kind ($paymentKind) is Initiated.!!!!!!";
  }

  @override
  String? processPayment(String? payName, double? payValue) {
    paymentValue = payValue;
    return "the Payment ($paymentName) is Processing with Value ($paymentValue)";
  }

  @override
  String? refundPayment(String? payName, String? payKind) {
    return "the Payment ($payName) with Kind ($payKind) is refunded";
  }
}

///Question -7 :___________________________
///7-Logging Service: Create an abstract class called Logger that defines methods like
// logInfo(), logWarning(), and logError(). Implement concrete classes like ConsoleLogger and
// FileLogger that extend the Logger class and provide different implementations for logging  messages.

abstract class Logger {
  String? logName;
  String? logKind;

  String? logInfo(String? lgName, String? lgKind);
  void logWarning(String? lgName);
  String? logError(String? lgName);
}

interface class ConsoleLogger extends Logger {
  ConsoleLogger({logName, logKind});

  @override
  String? logError(String? lgName) {
    return "The Logging ($lgName) is returning an Error here";
  }

  @override
  String? logInfo(String? lgName, String? lgKind) {
    logName = lgName;
    logKind = lgKind;
    return "The Logging with Name ($logName) and with Kind ($logKind) is Intiated here";
  }

  @override
  void logWarning(String? lgName) {
    print("The Logging ($lgName) have a warning here");
  }
}

interface class FileLogger extends Logger {
  FileLogger({logName, logKind});

  @override
  String? logError(String? lgName) {
    return "The Logging ($lgName) is returning an Error here";
  }

  @override
  String? logInfo(String? lgName, String? lgKind) {
    logName = lgName;
    logKind = lgKind;
    return "The Logging with Name ($logName) and with Kind ($logKind) is Intiated here";
  }

  @override
  void logWarning(String? lgName) {
    print("The Logging ($lgName) have a warning here");
  }
}

///Question -8 :___________________________
///8- Role-based Access Control: Define an AccessLevel enum that represents different levels
// of access, such as Guest, User, Moderator, and Admin. Create a class called User that
// encapsulates properties like name and accessLevel, and implement methods that perform
// actions based on the user's access level. use(functions and switch cases)

enum AccessLevel {
  guest,
  user,
  moderator,
  admin;
}

class User {
  String? name;
  String? accessLevel;

  User({this.name, this.accessLevel});

  String accessType(AccessLevel a1) {
    switch (a1) {
      case AccessLevel.user:
        accessLevel = "User";
        return "The Access Level is ($accessLevel)";
      case AccessLevel.guest:
        accessLevel = "Guest";
        return "The Access Level is ($accessLevel)";
      case AccessLevel.moderator:
        accessLevel = "Moderator";
        return "The Access Level is ($accessLevel)";
      case AccessLevel.admin:
        accessLevel = "Admin";
        return "The Access Level is ($accessLevel)";
    }
  }
}

///Question -9 :___________________________
///9-Auditable Mixin: Create a mixin called Auditable that adds auditing functionality to a class.
// The mixin should provide methods like recordCreate(), recordUpdate(), and recordDelete()
// that log audit information whenever an object is created, updated, or deleted.

mixin Auditable {
  void recordCreate();
  void recordUpdate();
  void recordDelete();
}

class Audits with Auditable {
  @override
  void recordCreate() {
    print("the Record is Created here");
  }

  @override
  void recordDelete() {
    print("the Record has been deleted here");
  }

  @override
  void recordUpdate() {
    print("The Record is being Updated here");
  }
}

///True or False :______________________
///1. In Dart, variables declared using the final keyword can be reassigned a
///new value after initialization. : False
///
///2. Dart supports multiple inheritance for classes. : False.
///
///3. Dart's is keyword is used to check if an object is of a specific type. : False.
///
///4. Dart's List class is an example of an immutable collection. : False (not immutable).
///
///5. Dart's super keyword is used to call a superclass's constructor. : True.
///
///6. Dart's == operator compares the values of two objects for equality. : True.
///
///7. Dart's try-catch block is used for handling synchronous exceptions only : False (and Asynchronous exceptions also)
///
///*************************************************************************************************** */
///
///What do you know about :__________________
///
///1- abstract function : is a Function without a body or implementation
///
///2- mention different classes exsting in dart :
///Answer: abstract classes and interfaces and Normal classes and Mixins
///
///3- what do you know about constructors ?
///Answer: the Constructor is a special case of methods which named as the same name of the class
///and it doesn't return any value and it have no return data type and it behaves as a function
///so it could take any kind of parameters
void main(List<String> arguments) {}


///Generated by : Hassan Saied Hassan
