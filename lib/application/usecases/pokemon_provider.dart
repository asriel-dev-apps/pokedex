import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/models/pokemon.dart';
import 'package:pokedex/infrastructure/repository/pokemon_repository.dart';

final pokemonProvider =
    FutureProvider.autoDispose.family<Pokemon, int>((ref, id) async {
  try {
    final PokemonRepository pokemonRepository =
        ref.watch(pokemonRepositoryProvider(id));
    final pokemon = await pokemonRepository.get();
    print('🐱詳細データ：$pokemon');
    return pokemon;
  } catch (e) {
    print("🐸$e");
    rethrow;
  }
});
