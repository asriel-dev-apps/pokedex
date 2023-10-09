// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokedexDeatailImpl _$$PokedexDeatailImplFromJson(Map<String, dynamic> json) =>
    _$PokedexDeatailImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      sprites: json['sprites'] == null
          ? null
          : PokedexSpritesInDetail.fromJson(
              json['sprites'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokedexDeatailImplToJson(
        _$PokedexDeatailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sprites': instance.sprites,
    };
