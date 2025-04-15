import 'package:pokedex/domain/repository/repository_interface.dart';
import 'package:pokedex/domain/repository/api_client_interface.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/models/pokedex_entry.dart';
import 'package:pokedex/infrastructure/dto/poke_api_dto.dart';

// PokedexRepositoryProviderのプロバイダー
/// アプリ起動時 or テスト時に本プロバイダーを override して使用してください
final pokedexRepositoryProvider = Provider<IPokedexRepository>(
  // 初期値を Impl にしてしまうと、
  // ドメイン層がインフラ層に依存してしまうことになるので、
  // どの層にも依存させないために未実装エラーを返却するようにしておく
  (_) => throw UnimplementedError(),
);

class PokedexRepository implements IPokedexRepository {
  final ApiClientInterface pokedexSrcApiClient;

  PokedexRepository({required this.pokedexSrcApiClient});

  @override
  Future<List<PokedexEntry>> get() async {
    // pathをセット
    pokedexSrcApiClient.setPath('pokemon/');
    // クエリパラメータをセット
    pokedexSrcApiClient.setQuery('limit=1024');
    // APIを叩く
    final Map<String, dynamic> res = await pokedexSrcApiClient.fetch();
    final pokeApiDto = PokeApiDto.fromJson(res);
    print('🐱$pokeApiDto');
    final results = pokeApiDto.results;
    final List<PokedexEntry> pokedex = results
        .map((e) => PokedexEntry(
              id: e.idFromUrl(),
              name: e.name,
              detailApiUrl: e.detailInfoUrl,
            ))
        .toList();

    return pokedex;
  }
}
