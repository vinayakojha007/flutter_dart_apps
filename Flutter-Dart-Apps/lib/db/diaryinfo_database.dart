import 'package:flutter_application_1/model/diaryinfo.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DiaryInfoDatabase {
  //Creating the SingleTon instance for the DiaryInfoDatabase class
  static final DiaryInfoDatabase instance = DiaryInfoDatabase._init();
  DiaryInfoDatabase._init();

  //Defines a Database private variable
  static Database? _database;

  //getter variable for accessing the _database private variable
  //Returns the _database is already created else it will initialize the database and it will return the DB
  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('notes.db');
    return _database!;
  }

  //?Method to initialize the database
  Future<Database> _initDB(String filePath) async {
    final dbPath =
        await getDatabasesPath(); //Returns the Database path based on the Platform i.e. Android or iOS
    final path = join(
        dbPath, filePath); //Combines the DB Path with the Database file name
    return await openDatabase(path,
        version: 1,
        onCreate:
            _createDB); //Opens the Database for the usage based on the provided path
  }

  //Method to create the table
  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const boolType = 'BOOLEAN NOT NULL';
    const integerType = 'INTEGER NOT NULL';

    await db.execute('''
CREATE TABLE $tableName(
  ${DiaryinfoFields.id} $idType,
 
  ${DiaryinfoFields.title} $textType,
  ${DiaryinfoFields.description} $textType,
  ${DiaryinfoFields.time} $textType
)
''');
  }

  //? Code for Inserting the Data / Record
  Future<Diaryinfo> create(Diaryinfo diaryinfo) async {
    final db = await instance.database;
    //?This method helps insert a map of [values] into the specified [table] and returns the id of the last inserted row.
    final id = await db.insert(tableName, diaryinfo.toJson());
    return diaryinfo.copy(id: id);
  }

  //? Code to Read a Single Record
  Future<Diaryinfo> readNote(int id) async {
    final db = await instance.database;

    //Select * from tableName where id = ?
    final maps = await db.query(tableName,
        columns: DiaryinfoFields.values,
        where: '${DiaryinfoFields.id} = ?',
        whereArgs: [id]);

    if (maps.isNotEmpty) {
      return Diaryinfo.fromJson(maps.first);
    } else {
      throw Exception('Id $id not found');
    }
  }

  //Code to Read All the Records
  Future<List<Diaryinfo>> readAllNotes() async {
    final db = await instance.database;
    const orderBy = '${DiaryinfoFields.time} ASC';

    //final result = await db.rawQuery('SELECT * from $tableName order by $orderBy');
    final result = await db.query(tableName, orderBy: orderBy);
    return result.map((json) => Diaryinfo.fromJson(json)).toList();
  }

  //Code to release the resources
  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
