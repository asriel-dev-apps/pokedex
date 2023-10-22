import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokedex_list_results.freezed.dart';
part 'pokedex_list_results.g.dart';

// モデル定義：ポケモンの情報
@freezed
class PokedexListResults with _$PokedexListResults {
  const factory PokedexListResults({
    required String name,
    required String url,
  }) = _PokedexListResults;

  // json形式で受け取るためのコードを生成するために記述
  factory PokedexListResults.fromJson(Map<String, dynamic> json) =>
      _$PokedexListResultsFromJson(json);
}
