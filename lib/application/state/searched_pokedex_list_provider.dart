import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ui/widgets/pokedex_list_tile.dart';

final sortedPokedexListTilesProvider =
    StateProvider.family<List<PokedexListTile>, List<PokedexListTile>>(
        (ref, pokedexListTiles) {
  final listTiles = [...pokedexListTiles];
  final sortType = ref.watch(pokedexListSortTypeProvider);
  switch (sortType) {
    case SortType.idASC:
      listTiles.sort((a, b) => a.id.compareTo(b.id));
      return listTiles;
    case SortType.idDESC:
      listTiles.sort((a, b) => -a.id.compareTo(b.id));
      return listTiles;
    case SortType.nameASC:
      listTiles.sort((a, b) => a.result.name.compareTo(b.result.name));
      return listTiles;
    case SortType.nameDESC:
      listTiles.sort((a, b) => -a.result.name.compareTo(b.result.name));
      return listTiles;
  }
});

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
