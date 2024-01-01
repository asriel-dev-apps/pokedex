import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/types/pokemon.dart';

final extractPokemonsProvider =
    StateProvider.family<List<Pokemon>, List<Pokemon>>((ref, pokedex) {
  // 検索結果を格納するリスト
  List<Pokemon> fuzzySearchedPokedex = [];

  // 入力された文字列
  // 空文字の場合：contains()メソッドは常にTrueとなり、全ての要素が返る
  final String fuzzySearchString = ref.watch(fuzzySearchStringProvider);

  // 正規表現（大文字/小文字を区別しない）
  final regNotSensitive = RegExp(fuzzySearchString, caseSensitive: false);
  fuzzySearchedPokedex =
      pokedex.where((e) => e.name.contains(regNotSensitive)).toList();

  // ファジーサーチにヒットしたList<Pokemon>をソートして返す
  final sortType = ref.watch(pokedexSrcSortTypeProvider);
  switch (sortType) {
    case SortType.idASC:
      fuzzySearchedPokedex.sort((a, b) => a.id.compareTo(b.id));
      return fuzzySearchedPokedex;
    case SortType.idDESC:
      fuzzySearchedPokedex.sort((a, b) => -a.id.compareTo(b.id));
      return fuzzySearchedPokedex;
    case SortType.nameASC:
      fuzzySearchedPokedex.sort((a, b) => a.name.compareTo(b.name));
      return fuzzySearchedPokedex;
    case SortType.nameDESC:
      fuzzySearchedPokedex.sort((a, b) => -a.name.compareTo(b.name));
      return fuzzySearchedPokedex;
  }
});

// 検索ボックスに入力された文字列でファジーサーチをするための正規表現を返すProvider
// 何も入力されていない場合: null
final fuzzySearchStringProvider = StateProvider<String>((ref) => '');

// 現在のソートタイプを返すProvider
final pokedexSrcSortTypeProvider =
    StateProvider<SortType>((ref) => SortType.idASC);

// フィルタの種類を表す列挙型
enum SortType {
  idASC,
  idDESC,
  nameASC,
  nameDESC,
}
