import 'package:pokedex/domain/repository/repository_interface.dart';
import 'package:pokedex/domain/types/pokedex_list.dart';
import 'package:pokedex/domain/types/pokedex_list_results.dart';

class MockPokedexListRepository implements RepositoryInterface {
  @override
  Future<PokedexList> fetch() async {
    return const PokedexList(
      count: null,
      results: [
        PokedexListResults(
            name: "25", url: "https://pokeapi.co/api/v2/pokemon/25/"),
        PokedexListResults(
            name: "26", url: "https://pokeapi.co/api/v2/pokemon/26/"),
      ],
    );
  }
}
