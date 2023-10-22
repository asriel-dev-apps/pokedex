import 'package:pokedex/domain/repository/repository_interface.dart';
import 'package:pokedex/domain/types/pokedex_list.dart';
import 'package:pokedex/domain/repository/api_interface.dart';

class PokedexListRepository implements RepositoryInterface {
  final ApiInterface pokedexListApi;
  PokedexListRepository({required this.pokedexListApi});

  @override
  Future<PokedexList> fetch() async {
    final pokedexList = await pokedexListApi.get();
    return pokedexList;
  }
}
