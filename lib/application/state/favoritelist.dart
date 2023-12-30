import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'favoritelist.g.dart';

@riverpod
class favoritelistNotifier extends _$favoritelistNotifier {
  Map<int, bool> pokemonMap =
      Map.fromIterable(List.generate(1000, (i) => i + 1), value: (v) => false);

  @override
  Map<int, bool> build() {
    return pokemonMap;
  }

  void updatefavorite(int pokemonId) {
    state = {
      ...state,
      pokemonId: !(state[pokemonId] ?? false),
    };
  }

  bool getfavorite(pokemonId) {
    return pokemonMap[pokemonId]!;
  }
}
