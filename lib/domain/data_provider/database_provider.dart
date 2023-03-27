import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../entity/cost.dart';
// import 'package:path_provider/path_provider.dart';

class DatabaseProvider {
  static DatabaseProvider? _instance;

  DatabaseProvider._();

  factory DatabaseProvider() {
    return _instance ??= DatabaseProvider._();
  }

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'costs.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE costs(
        id INTEGER PRIMARY KEY,
        name TEXT
      )
    ''');
  }

  Future<List<Cost>> getCosts() async {
    Database db = await database;
    var costs = await db.query('costs');
    List<Cost> costsList =
        costs.isNotEmpty ? costs.map((e) => Cost.fromMap(e)).toList() : [];
    return costsList;
  }
}
