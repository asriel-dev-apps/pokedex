/// DB Class の Interface
abstract class IDatabase<T> {
  /// データベース名
  String get dbName;

  /// データベースのバージョン
  int get dbVersion;

  /// データベースを取得する
  Future<T> get db;

  /// データベースのパスを取得する
  Future<String> getPath();

  ///　テーブルが存在するか確認する
  Future<bool> existTable(String tableName);
}
