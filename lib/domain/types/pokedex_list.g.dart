// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokedexListImpl _$$PokedexListImplFromJson(Map<String, dynamic> json) =>
    _$PokedexListImpl(
      count: json['count'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PokedexListResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokedexListImplToJson(_$PokedexListImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };
