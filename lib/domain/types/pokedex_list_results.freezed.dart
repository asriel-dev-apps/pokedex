// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokedex_list_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokedexListResults _$PokedexListResultsFromJson(Map<String, dynamic> json) {
  return _PokedexListResults.fromJson(json);
}

/// @nodoc
mixin _$PokedexListResults {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokedexListResultsCopyWith<PokedexListResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexListResultsCopyWith<$Res> {
  factory $PokedexListResultsCopyWith(
          PokedexListResults value, $Res Function(PokedexListResults) then) =
      _$PokedexListResultsCopyWithImpl<$Res, PokedexListResults>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokedexListResultsCopyWithImpl<$Res, $Val extends PokedexListResults>
    implements $PokedexListResultsCopyWith<$Res> {
  _$PokedexListResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokedexListResultsImplCopyWith<$Res>
    implements $PokedexListResultsCopyWith<$Res> {
  factory _$$PokedexListResultsImplCopyWith(_$PokedexListResultsImpl value,
          $Res Function(_$PokedexListResultsImpl) then) =
      __$$PokedexListResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokedexListResultsImplCopyWithImpl<$Res>
    extends _$PokedexListResultsCopyWithImpl<$Res, _$PokedexListResultsImpl>
    implements _$$PokedexListResultsImplCopyWith<$Res> {
  __$$PokedexListResultsImplCopyWithImpl(_$PokedexListResultsImpl _value,
      $Res Function(_$PokedexListResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$PokedexListResultsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokedexListResultsImpl implements _PokedexListResults {
  const _$PokedexListResultsImpl({required this.name, required this.url});

  factory _$PokedexListResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokedexListResultsImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokedexListResults(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokedexListResultsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokedexListResultsImplCopyWith<_$PokedexListResultsImpl> get copyWith =>
      __$$PokedexListResultsImplCopyWithImpl<_$PokedexListResultsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokedexListResultsImplToJson(
      this,
    );
  }
}

abstract class _PokedexListResults implements PokedexListResults {
  const factory _PokedexListResults(
      {required final String name,
      required final String url}) = _$PokedexListResultsImpl;

  factory _PokedexListResults.fromJson(Map<String, dynamic> json) =
      _$PokedexListResultsImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$PokedexListResultsImplCopyWith<_$PokedexListResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
