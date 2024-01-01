import 'package:pokedex/domain/repository/repository_interface.dart';
import 'package:pokedex/domain/repository/api_client_interface.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/types/pokemon.dart';
import 'package:pokedex/infrastructure/dto/pokedex_src.dart';

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

  /// Pokedexを取得
  ///
  /// - Cache(DBにデータ)が存在 "する" 場合： Read DB
  /// - Cache(DBにデータ)が存在 "しない" 場合： Call PokeAPI
  @override
  Future<List<Pokemon>> get() async {
    final Map<String, dynamic> res = await pokedexSrcApiClient.fetch();
    final pokedexSrc = PokedexSrc.fromJson(res);
    print('🐱$pokedexSrc');
    final results = pokedexSrc.results;
    final List<Pokemon> pokedex = results
        .map((e) => Pokemon(
              id: e.urlToId(),
              name: e.name,
              detailApiUrl: e.detailInfoUrl,
            ))
        .toList();

    return pokedex;
  }

  /// DBにアクセス
}
