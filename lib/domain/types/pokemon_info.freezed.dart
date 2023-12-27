// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonInfo _$PokemonInfoFromJson(Map<String, dynamic> json) {
  return _PokemonInfo.fromJson(json);
}

/// @nodoc
mixin _$PokemonInfo {
// // ポケモンの画像
  Map<String, dynamic>? get sprites =>
      throw _privateConstructorUsedError; // // ポケモンの種族などの情報取得
  Map<String, dynamic>? get species => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  List<dynamic>? get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonInfoCopyWith<PokemonInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonInfoCopyWith<$Res> {
  factory $PokemonInfoCopyWith(
          PokemonInfo value, $Res Function(PokemonInfo) then) =
      _$PokemonInfoCopyWithImpl<$Res, PokemonInfo>;
  @useResult
  $Res call(
      {Map<String, dynamic>? sprites,
      Map<String, dynamic>? species,
      int? height,
      int? weight,
      List<dynamic>? types});
}

/// @nodoc
class _$PokemonInfoCopyWithImpl<$Res, $Val extends PokemonInfo>
    implements $PokemonInfoCopyWith<$Res> {
  _$PokemonInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sprites = freezed,
    Object? species = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      sprites: freezed == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonInfoImplCopyWith<$Res>
    implements $PokemonInfoCopyWith<$Res> {
  factory _$$PokemonInfoImplCopyWith(
          _$PokemonInfoImpl value, $Res Function(_$PokemonInfoImpl) then) =
      __$$PokemonInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? sprites,
      Map<String, dynamic>? species,
      int? height,
      int? weight,
      List<dynamic>? types});
}

/// @nodoc
class __$$PokemonInfoImplCopyWithImpl<$Res>
    extends _$PokemonInfoCopyWithImpl<$Res, _$PokemonInfoImpl>
    implements _$$PokemonInfoImplCopyWith<$Res> {
  __$$PokemonInfoImplCopyWithImpl(
      _$PokemonInfoImpl _value, $Res Function(_$PokemonInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sprites = freezed,
    Object? species = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? types = freezed,
  }) {
    return _then(_$PokemonInfoImpl(
      sprites: freezed == sprites
          ? _value._sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      species: freezed == species
          ? _value._species
          : species // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonInfoImpl implements _PokemonInfo {
  const _$PokemonInfoImpl(
      {required final Map<String, dynamic>? sprites,
      required final Map<String, dynamic>? species,
      required this.height,
      required this.weight,
      required final List<dynamic>? types})
      : _sprites = sprites,
        _species = species,
        _types = types;

  factory _$PokemonInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonInfoImplFromJson(json);

// // ポケモンの画像
  final Map<String, dynamic>? _sprites;
// // ポケモンの画像
  @override
  Map<String, dynamic>? get sprites {
    final value = _sprites;
    if (value == null) return null;
    if (_sprites is EqualUnmodifiableMapView) return _sprites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

// // ポケモンの種族などの情報取得
  final Map<String, dynamic>? _species;
// // ポケモンの種族などの情報取得
  @override
  Map<String, dynamic>? get species {
    final value = _species;
    if (value == null) return null;
    if (_species is EqualUnmodifiableMapView) return _species;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int? height;
  @override
  final int? weight;
  final List<dynamic>? _types;
  @override
  List<dynamic>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PokemonInfo(sprites: $sprites, species: $species, height: $height, weight: $weight, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonInfoImpl &&
            const DeepCollectionEquality().equals(other._sprites, _sprites) &&
            const DeepCollectionEquality().equals(other._species, _species) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sprites),
      const DeepCollectionEquality().hash(_species),
      height,
      weight,
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonInfoImplCopyWith<_$PokemonInfoImpl> get copyWith =>
      __$$PokemonInfoImplCopyWithImpl<_$PokemonInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonInfoImplToJson(
      this,
    );
  }
}

abstract class _PokemonInfo implements PokemonInfo {
  const factory _PokemonInfo(
      {required final Map<String, dynamic>? sprites,
      required final Map<String, dynamic>? species,
      required final int? height,
      required final int? weight,
      required final List<dynamic>? types}) = _$PokemonInfoImpl;

  factory _PokemonInfo.fromJson(Map<String, dynamic> json) =
      _$PokemonInfoImpl.fromJson;

  @override // // ポケモンの画像
  Map<String, dynamic>? get sprites;
  @override // // ポケモンの種族などの情報取得
  Map<String, dynamic>? get species;
  @override
  int? get height;
  @override
  int? get weight;
  @override
  List<dynamic>? get types;
  @override
  @JsonKey(ignore: true)
  _$$PokemonInfoImplCopyWith<_$PokemonInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
