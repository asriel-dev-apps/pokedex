// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/types/pokemon_images.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

// モデル定義：ポケモンの情報
@freezed
class Pokemon with _$Pokemon {
  factory Pokemon({
    /// ID (図鑑番号)
    @Default(-1) id,

    /// 名前
    @Default("") String name,

    /// タイプ
    List<PokemonType?>? types,

    /// 高さ
    double? height,

    /// 重さ
    double? weight,

    /// 画像のURL
    @JsonKey(name: "sprites") PokemonImages? images,

    /// 作成日時
    DateTime? createdAt,

    /// 更新日時
    DateTime? updatedAt,

    /// 詳細情報取得APIのURL
    @Default("") String detailApiUrl,
  }) = _Pokemon;

  /// json から Pokemon型 に変換する factory constructor
  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}

// モデル定義：ポケモンの情報
@freezed
class PokemonType with _$PokemonType {
  factory PokemonType({
    int? slot,
    Map<String, String?>? type,
  }) = _PokemonType;

  /// json から PokemonType型 に変換する factory constructor
  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);
}
