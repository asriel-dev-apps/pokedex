import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:pokedex/domain/repository/database_constants.dart';
import 'package:sqflite/sqflite.dart';

/// Database の共通機能を提供する
/// interface　である IDatabase に記述してしまうと table ごとに同じ実装が必要となってしまうため、mixinとした
mixin DatabaseHelper {
  /// 継承先で以下の Singleton Pattern を実装してください
  ///
  /// Foo._();
  /// static final Foo _instance = Foo._();
  /// factory Foo() => _instance;
  ///
  /// ※ static final なクラス変数 `_instance` にプライベートコンストラクタを代入することでシングルトンになる

  // Databaseを静的変数として定義
  static Database? _db;

  /// getter
  /// - _db が null: 初期化処理を実行後 database に格納し、返す
  /// - _db が Non-null: 静的に所有している database を返す
  Future<Database> get db async => _db ??= await _initDB();

  /// 初期化処理
  Future<Database> _initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final String path = "${documentsDirectory.path}${DBName.pokedex.path}";
    Database db = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
    return db;
  }

  /// テーブルを作成
  void _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE pokemon (
        id INTEGER PRIMARY KEY,
        name TEXT NOT NULL,
        type1 TEXT,
        type2 TEXT,
        height TEXT,
        weight TEXT,
        images TEXT,
        created_at TEXT,
        updated_at TEXT,
        detail_api_url TEXT NOT NULL,
      )
    ''');
  }
}
