import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/models/pokedex_entry.dart';
import 'package:pokedex/infrastructure/repository/pokedex_repository.dart';

final pokedexProvider = FutureProvider.autoDispose((ref) async {
  final pokedexRepository = ref.watch(pokedexRepositoryProvider);
  try {
    final List<PokedexEntry> pokedex = await pokedexRepository.get();
    print('$pokedex');
    ref.keepAlive();
    return pokedex;
  } catch (e) {
    print('🐶$e');
    rethrow;
  }
});
