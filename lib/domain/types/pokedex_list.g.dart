// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokedexListImpl _$$PokedexListImplFromJson(Map<String, dynamic> json) =>
    _$PokedexListImpl(
      count: json['count'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => (e as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, e as String),
              ))
          .toList(),
    );

Map<String, dynamic> _$$PokedexListImplToJson(_$PokedexListImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };
