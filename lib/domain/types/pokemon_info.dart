import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_info.freezed.dart';
part 'pokemon_info.g.dart';

@freezed
class PokemonInfo with _$PokemonInfo {
  const factory PokemonInfo({
    // // ポケモンの画像
    required Map<String, dynamic>? sprites,

    // // ポケモンの種族などの情報取得
    required Map<String, dynamic>? species,

    required int? height,

    required int? weight,

    required List<dynamic>? types,

    // // ポケモンのタイプ
    // required String? type,

    // // ポケモンの説明文
    // required String? infoText,

    // // ポケモンの高さ
    // required int? height,

    // // ポケモンの重さ
    // required int? weight,

    // // ポケモンの種族などの情報取得
    // required String? species,

    // required List? names,

    //     /// 全ポケモン数
    // required int? count,

    // /// ポケモン名と詳細情報のURlをもつMap
    // required List<Map<String, String>?>? results,

  }) = _PokemonInfo;

    // json形式で受け取るためのコードを生成するために記述
  factory PokemonInfo.fromJson(Map<String, dynamic> json) =>
      _$PokemonInfoFromJson(json);
}