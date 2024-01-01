/// Database の種類
enum DBType { sqlite }

/// Database の名前
enum DBName {
  pokedex("/pokedex.db"),
  ;

  /// 先頭に `/` を有する DB path
  final String path;

  const DBName(this.path);
}

/// DB Table の名前
enum TableName {
  pokedexSrc("pokedex_list"),
  pokedexDetail("pokedex_detail"),
  ;

  final String snakeCaseName;

  const TableName(this.snakeCaseName);

  @override
  String toString() => snakeCaseName;
}
