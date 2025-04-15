// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonImpl _$$PokemonImplFromJson(Map<String, dynamic> json) =>
    _$PokemonImpl(
      name: json['name'] as String? ?? "",
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      cries: Cries.fromJson(json['cries'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonImplToJson(_$PokemonImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'sprites': instance.sprites,
      'cries': instance.cries,
      'types': instance.types,
    };

_$SpritesImpl _$$SpritesImplFromJson(Map<String, dynamic> json) =>
    _$SpritesImpl(
      frontDefault: json['front_default'] as String,
      other: OtherSprites.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpritesImplToJson(_$SpritesImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'other': instance.other,
    };

_$OtherSpritesImpl _$$OtherSpritesImplFromJson(Map<String, dynamic> json) =>
    _$OtherSpritesImpl(
      officialArtwork: OfficialArtwork.fromJson(
          json['official-artwork'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OtherSpritesImplToJson(_$OtherSpritesImpl instance) =>
    <String, dynamic>{
      'official-artwork': instance.officialArtwork,
    };

_$OfficialArtworkImpl _$$OfficialArtworkImplFromJson(
        Map<String, dynamic> json) =>
    _$OfficialArtworkImpl(
      frontDefault: json['front_default'] as String,
    );

Map<String, dynamic> _$$OfficialArtworkImplToJson(
        _$OfficialArtworkImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };

_$CriesImpl _$$CriesImplFromJson(Map<String, dynamic> json) => _$CriesImpl(
      latest: json['latest'] as String?,
    );

Map<String, dynamic> _$$CriesImplToJson(_$CriesImpl instance) =>
    <String, dynamic>{
      'latest': instance.latest,
    };

_$PokemonTypeImpl _$$PokemonTypeImplFromJson(Map<String, dynamic> json) =>
    _$PokemonTypeImpl(
      type: NamedResource.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonTypeImplToJson(_$PokemonTypeImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$NamedResourceImpl _$$NamedResourceImplFromJson(Map<String, dynamic> json) =>
    _$NamedResourceImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$NamedResourceImplToJson(_$NamedResourceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
