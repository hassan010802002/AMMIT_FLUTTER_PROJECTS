import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

part 'contacts_state.dart';

class ContactsCubit extends Cubit<ContactsState> {
  final String DB_Name = "contactsDB.db";
  final String Table_Name = "Contacts";
  final String ID_Column = "ID";
  final String Name_Column = "Name";
  final String Phone_Column = "Phone";
  final List<Map<String , Object?>> contactsList = [];
  final List<Map<String , Object?>> favoritesList = [];
  Database? database;
  int screenIndex = 0;


  ContactsCubit() : super(ContactsInitial());

  static ContactsCubit get(context) => BlocProvider.of<ContactsCubit>(context);

  void DB_Initial() async {
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

  void DB_Insertion({required String? Name, required String? Phone}) async {
    database!.transaction((txn) async {
      await txn.rawInsert('INSERT INTO $Table_Name ($Name_Column,$Phone_Column) VALUES(?,?)', [Name, Phone])
          .then((value) {
        emit(SuccessContactsInsertion());
        print("Record $value Inserted");
      }).catchError((error){
        emit(FailureContactsInsertion());
        print(error);
      });
    });
  }

  void Navigating(int index){
    screenIndex = index;
    emit(NavigationState());
  }

  void DB_Deletion({required int ID}) async {
    database!.transaction((txn) async {
      await txn.rawDelete('DELETE FROM $Table_Name WHERE $ID_Column = ?', [ID])
          .then((value) {
        emit(SuccessContactsDeletion());
        print("Record $value Inserted");
      }).catchError((error){
        emit(FailureContactsDeletion());
        print(error);
      });
    });
  }

  void DB_Update({required int ID, required String? Name, required String? Phone}) async {
    database!.transaction((txn) async {
      emit(LoadingContactsUpdating());
      await txn.rawUpdate('UPDATE $Table_Name SET $Name_Column = ?, $Phone_Column = ? WHERE $ID = ?', [Name, Phone, ID])
          .then((value) {
            emit(SuccessContactsUpdating());
        print("Record $value Updated");
      }).catchError((error){
        emit(FailureContactsUpdating());
        print(error);
      });
    });
  }

  void DB_Type_Update({required int ID, required String? type}) async {
    database!.transaction((txn) async {
      await txn.rawUpdate('UPDATE $Table_Name SET Type = ? WHERE $ID = ?', [type, ID])
          .then((value) {
        print("Record $value Updated");
      }).catchError((error){
        print(error);
      });
    });
  }

  void Fetching_DB() async {
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
