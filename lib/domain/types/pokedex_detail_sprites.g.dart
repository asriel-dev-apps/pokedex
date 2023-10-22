// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_detail_sprites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokedexSpritesInDetailImpl _$$PokedexSpritesInDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$PokedexSpritesInDetailImpl(
      frontDefault: json['front_default'] as String?,
      backDefault: json['back_default'] as String?,
      other: json['other'] as Map<String, dynamic>?,
      versions: json['versions'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$PokedexSpritesInDetailImplToJson(
        _$PokedexSpritesInDetailImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'back_default': instance.backDefault,
      'other': instance.other,
      'versions': instance.versions,
    };
