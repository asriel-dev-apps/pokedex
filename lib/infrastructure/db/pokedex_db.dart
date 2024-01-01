import 'package:pokedex/domain/repository/database_constants.dart';
import 'package:pokedex/domain/repository/database_interface.dart';
import 'package:pokedex/infrastructure/db/database_helper.dart';
import 'package:sqflite/sqflite.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

// PokedexDBのプロバイダー
/// アプリ起動時 or テスト時に本プロバイダーを override して使用してください
final pokedexDBProvider = Provider<IDatabase>(
  // 初期値を Impl にしてしまうと、
  // ドメイン層がインフラ層に依存してしまうことになるので、
  // どの層にも依存させないために未実装エラーを返却するようにしておく
  (_) => throw UnimplementedError(),
);

class PokedexDB with DatabaseHelper implements IDatabase {
  /// Singleton Pattern
  ///
  PokedexDB._();
  static final PokedexDB _instance = PokedexDB._();
  factory PokedexDB() => _instance;

  @override
  Future<Database> get db => _instance.db;

  @override
  String get dbName => DBName.pokedex.toString();

  @override
  int get dbVersion => 1;

  @override
  Future<bool> existTable(String tableName) {
    throw UnimplementedError();
  }

  @override
  Future<String> getPath() {
    throw UnimplementedError();
  }
}
