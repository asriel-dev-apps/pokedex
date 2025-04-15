// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_api_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokeApiDtoImpl _$$PokeApiDtoImplFromJson(Map<String, dynamic> json) =>
    _$PokeApiDtoImpl(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokeApiDtoImplToJson(_$PokeApiDtoImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      name: json['name'] as String,
      detailInfoUrl: json['url'] as String,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.detailInfoUrl,
    };
