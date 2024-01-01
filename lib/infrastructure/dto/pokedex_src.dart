// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokedex_src.freezed.dart';
part 'pokedex_src.g.dart';

// モデル定義： baseURL/pokemon でリクエストした結果を格納するデータ
@freezed
class PokedexSrc with _$PokedexSrc {
  const factory PokedexSrc({
    /// 全ポケモン数
    required int count,

    /// 次ページのURL
    String? next,

    /// 前ページのURL
    String? previous,

    /// [ポケモン名 と 詳細情報のURL を有する Map<String, String>]
    @JsonKey(name: "results") required List<Result> results,
  }) = _PokedexSrc;

  /// jsonからモデルに変換する factory constructor
  factory PokedexSrc.fromJson(Map<String, dynamic> json) =>
      _$PokedexSrcFromJson(json);
}

// "results": [
//     {
//         "name": "bulbasaur",
//         "url": "https://pokeapi.co/api/v2/pokemon/1/"
//     },
//     {
//         "name": "ivysaur",
//         "url": "https://pokeapi.co/api/v2/pokemon/2/"
//     }, ...
//  ]
// のような形で取得
@freezed
class Result with _$Result {
  // freezed を利用して作成した class へ Method を定義するために必要
  const Result._();

  const factory Result({
    required String name,
    @JsonKey(name: "url") required String detailInfoUrl,
  }) = _Result;

  /// json から Result型 に変換する factory constructor
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  /// url の末尾から id を取得
  int urlToId() {
    final String idString = detailInfoUrl
        .split("/")
        .reversed
        .firstWhere((e) => e.isNotEmpty && RegExp(r"[0-9]").hasMatch(e));
    final id = int.tryParse(idString) ?? -1; // Parse失敗時 -1 を返す
    return id;
  }
}
