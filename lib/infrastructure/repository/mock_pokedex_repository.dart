import 'package:pokedex/domain/repository/repository_interface.dart';
import 'package:pokedex/domain/types/pokemon.dart';
import 'package:pokedex/infrastructure/dto/pokedex_src.dart';

class MockPokedexRepository implements IPokedexRepository {
  @override
  Future<List<Pokemon>> get() async {
    const Map<String, dynamic> responseJson = {
      "count": null,
      "results": [
        {
          "name": "Pikachu",
          "url": "https://pokeapi.co/api/v2/pokemon/25/",
        },
        {
          "name": "Raichu",
          "url": "https://pokeapi.co/api/v2/pokemon/26/",
        },
      ],
    };
    final pokedexDTO = PokedexSrc.fromJson(responseJson);
    final pokedex = pokedexDTO.results
        .map((e) => Pokemon(
              id: e.urlToId(),
              name: e.name,
              detailApiUrl: e.detailInfoUrl,
            ))
        .toList();

    return pokedex;
  }
}
