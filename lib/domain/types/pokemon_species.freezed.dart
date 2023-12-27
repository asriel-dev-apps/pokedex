// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_species.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonSpecies _$PokemonSpeciesFromJson(Map<String, dynamic> json) {
  return _PokemonSpecies.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpecies {
// // ポケモンの画像
  Map<String, dynamic>? get sprites =>
      throw _privateConstructorUsedError; // // ポケモンの種族などの情報取得
  Map<String, dynamic>? get species => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpeciesCopyWith<PokemonSpecies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesCopyWith<$Res> {
  factory $PokemonSpeciesCopyWith(
          PokemonSpecies value, $Res Function(PokemonSpecies) then) =
      _$PokemonSpeciesCopyWithImpl<$Res, PokemonSpecies>;
  @useResult
  $Res call({Map<String, dynamic>? sprites, Map<String, dynamic>? species});
}

/// @nodoc
class _$PokemonSpeciesCopyWithImpl<$Res, $Val extends PokemonSpecies>
    implements $PokemonSpeciesCopyWith<$Res> {
  _$PokemonSpeciesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sprites = freezed,
    Object? species = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSpeciesImplCopyWith<$Res>
    implements $PokemonSpeciesCopyWith<$Res> {
  factory _$$PokemonSpeciesImplCopyWith(_$PokemonSpeciesImpl value,
          $Res Function(_$PokemonSpeciesImpl) then) =
      __$$PokemonSpeciesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic>? sprites, Map<String, dynamic>? species});
}

/// @nodoc
class __$$PokemonSpeciesImplCopyWithImpl<$Res>
    extends _$PokemonSpeciesCopyWithImpl<$Res, _$PokemonSpeciesImpl>
    implements _$$PokemonSpeciesImplCopyWith<$Res> {
  __$$PokemonSpeciesImplCopyWithImpl(
      _$PokemonSpeciesImpl _value, $Res Function(_$PokemonSpeciesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sprites = freezed,
    Object? species = freezed,
  }) {
    return _then(_$PokemonSpeciesImpl(
      sprites: freezed == sprites
          ? _value._sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      species: freezed == species
          ? _value._species
          : species // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpeciesImpl implements _PokemonSpecies {
  const _$PokemonSpeciesImpl(
      {required final Map<String, dynamic>? sprites,
      required final Map<String, dynamic>? species})
      : _sprites = sprites,
        _species = species;

  factory _$PokemonSpeciesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpeciesImplFromJson(json);

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
  String toString() {
    return 'PokemonSpecies(sprites: $sprites, species: $species)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpeciesImpl &&
            const DeepCollectionEquality().equals(other._sprites, _sprites) &&
            const DeepCollectionEquality().equals(other._species, _species));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sprites),
      const DeepCollectionEquality().hash(_species));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpeciesImplCopyWith<_$PokemonSpeciesImpl> get copyWith =>
      __$$PokemonSpeciesImplCopyWithImpl<_$PokemonSpeciesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpeciesImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpecies implements PokemonSpecies {
  const factory _PokemonSpecies(
      {required final Map<String, dynamic>? sprites,
      required final Map<String, dynamic>? species}) = _$PokemonSpeciesImpl;

  factory _PokemonSpecies.fromJson(Map<String, dynamic> json) =
      _$PokemonSpeciesImpl.fromJson;

  @override // // ポケモンの画像
  Map<String, dynamic>? get sprites;
  @override // // ポケモンの種族などの情報取得
  Map<String, dynamic>? get species;
  @override
  @JsonKey(ignore: true)
  _$$PokemonSpeciesImplCopyWith<_$PokemonSpeciesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
