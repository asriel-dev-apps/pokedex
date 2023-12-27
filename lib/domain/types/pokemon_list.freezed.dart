// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonList _$PokemonListFromJson(Map<String, dynamic> json) {
  return _PokemonList.fromJson(json);
}

/// @nodoc
mixin _$PokemonList {
  /// 全ポケモン数
  int? get count => throw _privateConstructorUsedError;

  /// ポケモン名と詳細情報のURlをもつMap
  List<Map<String, String>?>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonListCopyWith<PokemonList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListCopyWith<$Res> {
  factory $PokemonListCopyWith(
          PokemonList value, $Res Function(PokemonList) then) =
      _$PokemonListCopyWithImpl<$Res, PokemonList>;
  @useResult
  $Res call({int? count, List<Map<String, String>?>? results});
}

/// @nodoc
class _$PokemonListCopyWithImpl<$Res, $Val extends PokemonList>
    implements $PokemonListCopyWith<$Res> {
  _$PokemonListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonListImplCopyWith<$Res>
    implements $PokemonListCopyWith<$Res> {
  factory _$$PokemonListImplCopyWith(
          _$PokemonListImpl value, $Res Function(_$PokemonListImpl) then) =
      __$$PokemonListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<Map<String, String>?>? results});
}

/// @nodoc
class __$$PokemonListImplCopyWithImpl<$Res>
    extends _$PokemonListCopyWithImpl<$Res, _$PokemonListImpl>
    implements _$$PokemonListImplCopyWith<$Res> {
  __$$PokemonListImplCopyWithImpl(
      _$PokemonListImpl _value, $Res Function(_$PokemonListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_$PokemonListImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonListImpl implements _PokemonList {
  const _$PokemonListImpl(
      {required this.count, required final List<Map<String, String>?>? results})
      : _results = results;

  factory _$PokemonListImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonListImplFromJson(json);

  /// 全ポケモン数
  @override
  final int? count;

  /// ポケモン名と詳細情報のURlをもつMap
  final List<Map<String, String>?>? _results;

  /// ポケモン名と詳細情報のURlをもつMap
  @override
  List<Map<String, String>?>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PokemonList(count: $count, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListImplCopyWith<_$PokemonListImpl> get copyWith =>
      __$$PokemonListImplCopyWithImpl<_$PokemonListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonListImplToJson(
      this,
    );
  }
}

abstract class _PokemonList implements PokemonList {
  const factory _PokemonList(
      {required final int? count,
      required final List<Map<String, String>?>? results}) = _$PokemonListImpl;

  factory _PokemonList.fromJson(Map<String, dynamic> json) =
      _$PokemonListImpl.fromJson;

  @override

  /// 全ポケモン数
  int? get count;
  @override

  /// ポケモン名と詳細情報のURlをもつMap
  List<Map<String, String>?>? get results;
  @override
  @JsonKey(ignore: true)
  _$$PokemonListImplCopyWith<_$PokemonListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
