// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokedexEntryImpl _$$PokedexEntryImplFromJson(Map<String, dynamic> json) =>
    _$PokedexEntryImpl(
      id: json['id'] ?? -1,
      name: json['name'] as String? ?? "",
      detailApiUrl: json['detailApiUrl'] as String? ?? "",
    );

Map<String, dynamic> _$$PokedexEntryImplToJson(_$PokedexEntryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'detailApiUrl': instance.detailApiUrl,
    };
