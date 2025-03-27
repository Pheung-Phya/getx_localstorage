import 'package:getx_route/models/product.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static Database? _db;

  Future<Database> get db async {
    if (_db != null) return _db!;
    _db = await initDb();
    return _db!;
  }

  initDb() async {
    String path = join(await getDatabasesPath(), 'product.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE products(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            qty INTEGER,
            price REAL,
            image TEXT
          )
        ''');
      },
    );
  }

  Future<int> insertProduct(Product product) async {
    var dbClient = await db;
    return await dbClient.insert('products', product.toMap());
  }

  Future<List<Product>> getProducts() async {
    var dbClient = await db;
    var res = await dbClient.query('products');
    return res.map((e) => Product.fromMap(e)).toList();
  }

  Future<int> updateProduct(Product product) async {
    var dbClient = await db;
    return await dbClient.update(
      'products',
      product.toMap(),
      where: 'id = ?',
      whereArgs: [product.id],
    );
  }

  Future<int> deleteProduct(int id) async {
    var dbClient = await db;
    return await dbClient.delete(
      'products',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
