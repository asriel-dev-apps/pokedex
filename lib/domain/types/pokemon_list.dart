import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_list.freezed.dart';
part 'pokemon_list.g.dart';

@freezed
class PokemonList with _$PokemonList {
  const factory PokemonList({
    /// 全ポケモン数
    required int? count,

    /// ポケモン名と詳細情報のURlをもつMap
    required List<Map<String, String>?>? results,
  }) = _PokemonList;

    // json形式で受け取るためのコードを生成するために記述
  factory PokemonList.fromJson(Map<String, dynamic> json) =>
      _$PokemonListFromJson(json);
}