// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonInfoImpl _$$PokemonInfoImplFromJson(Map<String, dynamic> json) =>
    _$PokemonInfoImpl(
      sprites: json['sprites'] as Map<String, dynamic>?,
      species: json['species'] as Map<String, dynamic>?,
      height: json['height'] as int?,
      weight: json['weight'] as int?,
      types: json['types'] as List<dynamic>?,
    );

Map<String, dynamic> _$$PokemonInfoImplToJson(_$PokemonInfoImpl instance) =>
    <String, dynamic>{
      'sprites': instance.sprites,
      'species': instance.species,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
    };
