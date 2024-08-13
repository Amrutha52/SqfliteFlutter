import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class HomeScreenController
{
  //Global variable
  static late Database database; // DB orikalum null aavilla enne parayan late keyword add cheythu.

  static List<Map> myDataList = [];

  // when we using static , we can call it using class name
  static Future<void> initDB()
  async {
    // open the database
    database = await openDatabase("myDb.db", version: 1,
        onCreate: (Database db, int version) async {
          // When creating the db, create the table
          await db.execute(
              'CREATE TABLE Employees (id INTEGER PRIMARY KEY, name TEXT, designation TEXT)');
        });
  }

  static Future<void> addData({required String designation, required String name}) async
  {
    await database.rawInsert('INSERT INTO Employees(name, designation) VALUES(?, ?)', [name, designation]);
    getData(); // add cheytha data kittaan vendi
  }

  static Future<void> getData() async
  {
    // Get the records
    List<Map> list = await database.rawQuery('SELECT * FROM Employees');
    myDataList = list;
    print(list);
  }
}
