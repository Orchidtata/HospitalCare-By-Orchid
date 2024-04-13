import 'package:my_app/apotek/present_apoteker.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';


class DbHelper {
  static late DbHelper _dbHelper;
  static late Database _database;

  DbHelper._createObject();

  factory DbHelper() {
    _dbHelper = DbHelper._createObject(); // Inisialisasi _dbHelper di sini
    _dbHelper.initDb(); // Initialize the database before returning the instance
    return _dbHelper;
  }

  Future<Database> initDb() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'apotek.db'; // Ubah nama file database
    var apotekDatabase =
        await openDatabase(path, version: 1, onCreate: _createDb);
    _database = apotekDatabase; // Set the _database field
    return apotekDatabase;
  }

  void _createDb(Database db, int version) async {
    await db.execute('''
    CREATE TABLE apotek (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nama_obat TEXT, -- Ubah nama kolom
      jenis_obat TEXT, -- Ubah nama kolom
      jumlah_obat TEXT -- Ubah nama kolom
    )
  ''');
  }

  Future<Database> get database async {
    return _database;
  }

  Future<List<Map<String, dynamic>>> select() async {
    Database db = await this.database;
    var mapList =
        await db.query('apotek', orderBy: 'nama_obat'); // Ubah nama tabel
    return mapList;
  }

  Future<int> insert(Apotek object) async {
    Database db = await this.database;
    Map<String, dynamic> mapWithoutId = object.toMap();
    mapWithoutId.remove('id'); // Hapus kolom 'id' dari peta
    int count = await db.insert('apotek', mapWithoutId);
    return count;
  }

  Future<int> update(Apotek object) async {
    Database db = await this.database;
    int count = await db.update('apotek', object.toMap(),
        where: 'id=?', whereArgs: [object.id]);
    return count;
  }

  Future<int> delete(int id) async {
    Database db = await this.database;
    int count = await db
        .delete('apotek', where: 'id=?', whereArgs: [id]); // Ubah nama tabel
    return count;
  }

  Future<List<Apotek>> getApotekList() async {
    var apotekMapList = await select();
    int count = apotekMapList.length;
    List<Apotek> apotekList = []; // Ubah tipe objek
    for (int i = 0; i < count; i++) {
      apotekList.add(Apotek.fromMap(apotekMapList[i])); // Ubah tipe objek
    }
    return apotekList;
  }
}
