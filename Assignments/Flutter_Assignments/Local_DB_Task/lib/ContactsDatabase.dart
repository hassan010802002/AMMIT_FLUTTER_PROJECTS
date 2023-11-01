// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ContactsDatabase {
  static const String DB_Name = "contactsDB.db";
  static const String Table_Name = "Contacts";
  static const String ID_Column = "ID";
  static const String Name_Column = "Name";
  static const String Phone_Column = "Phone";
  static final List<Map<String , Object?>> contactsList = [];
  static final List<Map<String , Object?>> favoritesList = [];
  static Database? database;

  static void DB_Initial() async {
    final String dbPath = await getDatabasesPath();
    final String newPath = join(dbPath, DB_Name);
    print(newPath);
    database = await openDatabase(
      newPath,
      version: 1,
      onCreate: (db, version) async {
        db.transaction((txn) async {
          await txn.execute('CREATE TABLE $Table_Name ($ID_Column INTEGER PRIMARY KEY AUTOINCREMENT, $Name_Column TEXT, $Phone_Column TEXT)')
              .then((value) {
                print("Table $Table_Name Created in the $DB_Name Database");
          }).catchError((error){
            print(error);
          });
        });
      },
    );
  }

  static void DB_Insertion({required String? Name, required String? Phone}) async {
    database!.transaction((txn) async {
      await txn.rawInsert('INSERT INTO $Table_Name ($Name_Column,$Phone_Column) VALUES(?,?)', [Name, Phone])
          .then((value) {
            print("Record $value Inserted");
      }).catchError((error){
        print(error);
      });
    });
  }

  static void DB_Deletion({required int ID}) async {
    database!.transaction((txn) async {
      await txn.rawDelete('DELETE FROM $Table_Name WHERE $ID_Column = ?', [ID]).then((value) {
        print("Record $value Inserted");
      }).catchError((error){
        print(error);
      });
    });
  }

  static void DB_Update({required int ID, required String? Name, required String? Phone}) async {
    database!.transaction((txn) async {
      await txn.rawUpdate('UPDATE $Table_Name SET $Name_Column = ?, $Phone_Column = ? WHERE $ID = ?', [Name, Phone, ID])
          .then((value) {
        print("Record $value Updated");
      }).catchError((error){
        print(error);
      });
    });
  }

  static void DB_Type_Update({required int ID, required String? type}) async {
    database!.transaction((txn) async {
      await txn.rawUpdate('UPDATE $Table_Name SET Type = ? WHERE $ID = ?', [type, ID])
          .then((value) {
        print("Record $value Updated");
      }).catchError((error){
        print(error);
      });
    });
  }

  static void Fetching_DB() async {
    contactsList.clear();
    favoritesList.clear();
    database!.transaction((txn) async {
      await txn.rawQuery('SELECT * FROM $Table_Name').then((value) {
        for (var element in value) {
          contactsList.add(element);
          if(element['type'] == 'Favorite'){
            favoritesList.add(element);
          }
        }
      }).catchError((error){
        print(error);
      });
    });
  }
}
