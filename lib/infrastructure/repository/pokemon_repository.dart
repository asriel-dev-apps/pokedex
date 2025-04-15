import 'package:pokedex/domain/repository/repository_interface.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/models/pokemon.dart';
import 'package:pokedex/infrastructure/api/pokedex_api_client.dart';

final pokemonRepositoryProvider = Provider.family<PokemonRepository, int>(
    (ref, id) => PokemonRepository(id: id));

class PokemonRepository implements IPokedexRepository {
  final int id;

  PokemonRepository({required this.id});

  @override
  Future<Pokemon> get() async {
    final pokedexSrcApiClient = PokedexSrcApiClient();
    pokedexSrcApiClient.setPath("/pokemon/$id");
    final Map<String, dynamic> res = await pokedexSrcApiClient.fetch();
    print('🐶$res');
    final pokemon = Pokemon.fromJsonAndId(res, id: id);
    return pokemon;
  }
}
