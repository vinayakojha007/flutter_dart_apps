import 'package:flutter_application_1/model/notes.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class NotesDatabase {
  //Creating the SingleTon instance for the NotesDatabase class
  static final NotesDatabase instance = NotesDatabase._init();
  NotesDatabase._init();

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
  ${NoteFields.id} $idType,
  ${NoteFields.isImportant} $boolType,
  ${NoteFields.PriorityLevel} $integerType,
  ${NoteFields.title} $textType,
  ${NoteFields.description} $textType,
  ${NoteFields.time} $textType
)
''');
  }

  //? Code for Inserting the Data / Record
  Future<Note> create(Note note) async {
    final db = await instance.database;
    //?This method helps insert a map of [values] into the specified [table] and returns the id of the last inserted row.
    final id = await db.insert(tableName, note.toJson());
    return note.copy(id: id);
  }

  //? Code to Read a Single Record
  Future<Note> readNote(int id) async {
    final db = await instance.database;

    //Select * from tableName where id = ?
    final maps = await db.query(tableName,
        columns: NoteFields.values,
        where: '${NoteFields.id} = ?',
        whereArgs: [id]);

    if (maps.isNotEmpty) {
      return Note.fromJson(maps.first);
    } else {
      throw Exception('Id $id not found');
    }
  }

  //Code to Read All the Records
  Future<List<Note>> readAllNotes() async {
    final db = await instance.database;
    const orderBy = '${NoteFields.time} ASC';

    //final result = await db.rawQuery('SELECT * from $tableName order by $orderBy');
    final result = await db.query(tableName, orderBy: orderBy);
    return result.map((json) => Note.fromJson(json)).toList();
  }

  //Code to Update / Modify the Exsiting Data present within the Record
  Future<int> update(Note note) async {
    final db = await instance.database;
    return db.update(tableName, note.toJson(),
        where: '${NoteFields.id} = ?', whereArgs: [note.id]);
  }

  //Remove or Delete the Existing Record from the Database Table
  Future<int> delete(int id) async {
    final db = await instance.database;
    return db.delete(tableName, where: '${NoteFields.id} = ?', whereArgs: [id]);
  }

  //Code to release the resources
  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
