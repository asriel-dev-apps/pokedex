// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonListImpl _$$PokemonListImplFromJson(Map<String, dynamic> json) =>
    _$PokemonListImpl(
      count: json['count'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => (e as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, e as String),
              ))
          .toList(),
    );

Map<String, dynamic> _$$PokemonListImplToJson(_$PokemonListImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };
