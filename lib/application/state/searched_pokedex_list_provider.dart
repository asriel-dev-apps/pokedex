import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ui/widgets/pokedex_list_tile.dart';

final sortedPokedexListTilesProvider =
    StateProvider.family<List<PokedexListTile>, List<PokedexListTile>>(
        (ref, pokedexListTiles) {
  // Original List<PokedexListTile> を deep copy
  final List<PokedexListTile> listTiles = [...pokedexListTiles];

  /// ファジーサーチにヒットしたリストタイルを返す
  // 検索結果を格納するリスト
  List<PokedexListTile> fuzzySearchedListTiles = [];
  // 入力された文字列
  // 空文字の場合：contains()メソッドは常にTrueとなり、全ての要素が返る
  final String fuzzySearchString = ref.watch(fuzzySearchStringProvider);
  // 正規表現（大文字/小文字を区別しない）
  final regNotSensitive = RegExp(fuzzySearchString, caseSensitive: false);
  fuzzySearchedListTiles =
      listTiles.where((e) => e.result.name.contains(regNotSensitive)).toList();

  /// ファジーサーチにヒットしたList<PokedexListTile>をソートして返す
  final sortType = ref.watch(pokedexListSortTypeProvider);
  switch (sortType) {
    case SortType.idASC:
      fuzzySearchedListTiles.sort((a, b) => a.id.compareTo(b.id));
      return fuzzySearchedListTiles;
    case SortType.idDESC:
      fuzzySearchedListTiles.sort((a, b) => -a.id.compareTo(b.id));
      return fuzzySearchedListTiles;
    case SortType.nameASC:
      fuzzySearchedListTiles
          .sort((a, b) => a.result.name.compareTo(b.result.name));
      return fuzzySearchedListTiles;
    case SortType.nameDESC:
      fuzzySearchedListTiles
          .sort((a, b) => -a.result.name.compareTo(b.result.name));
      return fuzzySearchedListTiles;
  }
});

// 検索ボックスに入力された文字列でファジーサーチをするための正規表現を返すProvider
// 何も入力されていない場合: null
final fuzzySearchStringProvider = StateProvider<String>((ref) => '');

// 現在のソートタイプを返すProvider
final pokedexListSortTypeProvider =
    StateProvider<SortType>((ref) => SortType.idASC);

// フィルタの種類を表す列挙型
enum SortType {
  idASC,
  idDESC,
  nameASC,
  nameDESC,
}
