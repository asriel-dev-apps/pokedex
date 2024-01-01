// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonImagesImpl _$$PokemonImagesImplFromJson(Map<String, dynamic> json) =>
    _$PokemonImagesImpl(
      frontDefault: json['front_default'] as String?,
      backDefault: json['back_default'] as String?,
      other: json['other'] as Map<String, dynamic>?,
      versions: json['versions'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$PokemonImagesImplToJson(_$PokemonImagesImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'back_default': instance.backDefault,
      'other': instance.other,
      'versions': instance.versions,
    };
