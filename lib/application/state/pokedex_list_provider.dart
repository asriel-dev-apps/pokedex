import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/repository/repository_interface.dart';
import '../../domain/types/pokedex_list.dart';
import '../../domain/types/pokedex_list_results.dart';

final pokedexListProvider = FutureProvider.autoDispose((ref) async {
  final pokedexListRepository = ref.watch(pokedexListRepositoryProvider);
  try {
    final PokedexList res = await pokedexListRepository.fetch();
    ref.keepAlive();
    final List<PokedexListResults?>? results = res.results;
    if (results == null) throw Exception();
    return results;
  } catch (e) {
    rethrow;
  }
});
