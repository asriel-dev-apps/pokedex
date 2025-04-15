// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

// モデル定義：ポケモンの情報
@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    @JsonKey(includeFromJson: false, includeToJson: false) int? id,
    @Default("") String name,
    required int height,
    required int weight,
    required Sprites sprites,
    required Cries cries,
    required List<PokemonType> types,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);

  factory Pokemon.fromJsonAndId(Map<String, dynamic> json, {required int id}) {
    final temp = Pokemon.fromJson(json);
    return temp.copyWith(id: id);
  }
}

@freezed
class Sprites with _$Sprites {
  const factory Sprites({
    @JsonKey(name: 'front_default') required String frontDefault,
    required OtherSprites other,
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}

@freezed
class OtherSprites with _$OtherSprites {
  const factory OtherSprites({
    @JsonKey(name: 'official-artwork') required OfficialArtwork officialArtwork,
  }) = _OtherSprites;

  factory OtherSprites.fromJson(Map<String, dynamic> json) =>
      _$OtherSpritesFromJson(json);
}

@freezed
class OfficialArtwork with _$OfficialArtwork {
  const factory OfficialArtwork({
    @JsonKey(name: 'front_default') required String frontDefault,
  }) = _OfficialArtwork;

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$OfficialArtworkFromJson(json);
}

@freezed
class Cries with _$Cries {
  const factory Cries({
    String? latest,
  }) = _Cries;

  factory Cries.fromJson(Map<String, dynamic> json) => _$CriesFromJson(json);
}

@freezed
class PokemonType with _$PokemonType {
  const factory PokemonType({
    @JsonKey(name: 'type') required NamedResource type,
  }) = _PokemonType;

  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);
}

@freezed
class NamedResource with _$NamedResource {
  const factory NamedResource({
    required String name,
    required String url,
  }) = _NamedResource;

  factory NamedResource.fromJson(Map<String, dynamic> json) =>
      _$NamedResourceFromJson(json);
}
