import 'package:pokedex/domain/repository/repository_interface.dart';
import 'package:pokedex/domain/models/pokedex_entry.dart';
import 'package:pokedex/infrastructure/dto/poke_api_dto.dart';

class MockPokedexRepository implements IPokedexRepository {
  @override
  Future<List<PokedexEntry>> get() async {
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
    final pokeApiDto = PokeApiDto.fromJson(responseJson);
    final pokedex = pokeApiDto.results
        .map((e) => PokedexEntry(
              id: e.idFromUrl(),
              name: e.name,
              detailApiUrl: e.detailInfoUrl,
            ))
        .toList();

    return pokedex;
  }
}
