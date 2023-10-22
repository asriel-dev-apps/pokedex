import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/types/pokedex_list_results.dart';

part 'pokedex_list.freezed.dart';
part 'pokedex_list.g.dart';

// モデル定義：ポケモンの情報
@freezed
class PokedexList with _$PokedexList {
  const factory PokedexList({
    /// 全ポケモン数
    required int? count,

    /// ポケモン名と詳細情報のURlをもつMap
    required List<PokedexListResults?>? results,
  }) = _PokedexList;

  // json形式で受け取るためのコードを生成するために記述
  factory PokedexList.fromJson(Map<String, dynamic> json) =>
      _$PokedexListFromJson(json);
}
