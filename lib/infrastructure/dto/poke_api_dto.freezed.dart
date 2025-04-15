// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poke_api_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokeApiDto _$PokeApiDtoFromJson(Map<String, dynamic> json) {
  return _PokeApiDto.fromJson(json);
}

/// @nodoc
mixin _$PokeApiDto {
  /// 全ポケモン数
  int get count => throw _privateConstructorUsedError;

  /// 次ページのURL
  String? get next => throw _privateConstructorUsedError;

  /// 前ページのURL
  String? get previous => throw _privateConstructorUsedError;

  /// [ポケモン名 と 詳細情報のURL を有する Map<String, String>]
  @JsonKey(name: "results")
  List<Result> get results => throw _privateConstructorUsedError;

  /// Serializes this PokeApiDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokeApiDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokeApiDtoCopyWith<PokeApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeApiDtoCopyWith<$Res> {
  factory $PokeApiDtoCopyWith(
          PokeApiDto value, $Res Function(PokeApiDto) then) =
      _$PokeApiDtoCopyWithImpl<$Res, PokeApiDto>;
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      @JsonKey(name: "results") List<Result> results});
}

/// @nodoc
class _$PokeApiDtoCopyWithImpl<$Res, $Val extends PokeApiDto>
    implements $PokeApiDtoCopyWith<$Res> {
  _$PokeApiDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokeApiDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokeApiDtoImplCopyWith<$Res>
    implements $PokeApiDtoCopyWith<$Res> {
  factory _$$PokeApiDtoImplCopyWith(
          _$PokeApiDtoImpl value, $Res Function(_$PokeApiDtoImpl) then) =
      __$$PokeApiDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      @JsonKey(name: "results") List<Result> results});
}

/// @nodoc
class __$$PokeApiDtoImplCopyWithImpl<$Res>
    extends _$PokeApiDtoCopyWithImpl<$Res, _$PokeApiDtoImpl>
    implements _$$PokeApiDtoImplCopyWith<$Res> {
  __$$PokeApiDtoImplCopyWithImpl(
      _$PokeApiDtoImpl _value, $Res Function(_$PokeApiDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokeApiDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$PokeApiDtoImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeApiDtoImpl implements _PokeApiDto {
  const _$PokeApiDtoImpl(
      {required this.count,
      this.next,
      this.previous,
      @JsonKey(name: "results") required final List<Result> results})
      : _results = results;

  factory _$PokeApiDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeApiDtoImplFromJson(json);

  /// 全ポケモン数
  @override
  final int count;

  /// 次ページのURL
  @override
  final String? next;

  /// 前ページのURL
  @override
  final String? previous;

  /// [ポケモン名 と 詳細情報のURL を有する Map<String, String>]
  final List<Result> _results;

  /// [ポケモン名 と 詳細情報のURL を有する Map<String, String>]
  @override
  @JsonKey(name: "results")
  List<Result> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PokeApiDto(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeApiDtoImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  /// Create a copy of PokeApiDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeApiDtoImplCopyWith<_$PokeApiDtoImpl> get copyWith =>
      __$$PokeApiDtoImplCopyWithImpl<_$PokeApiDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeApiDtoImplToJson(
      this,
    );
  }
}

abstract class _PokeApiDto implements PokeApiDto {
  const factory _PokeApiDto(
          {required final int count,
          final String? next,
          final String? previous,
          @JsonKey(name: "results") required final List<Result> results}) =
      _$PokeApiDtoImpl;

  factory _PokeApiDto.fromJson(Map<String, dynamic> json) =
      _$PokeApiDtoImpl.fromJson;

  /// 全ポケモン数
  @override
  int get count;

  /// 次ページのURL
  @override
  String? get next;

  /// 前ページのURL
  @override
  String? get previous;

  /// [ポケモン名 と 詳細情報のURL を有する Map<String, String>]
  @override
  @JsonKey(name: "results")
  List<Result> get results;

  /// Create a copy of PokeApiDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokeApiDtoImplCopyWith<_$PokeApiDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String get detailInfoUrl => throw _privateConstructorUsedError;

  /// Serializes this Result to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({String name, @JsonKey(name: "url") String detailInfoUrl});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? detailInfoUrl = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      detailInfoUrl: null == detailInfoUrl
          ? _value.detailInfoUrl
          : detailInfoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, @JsonKey(name: "url") String detailInfoUrl});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? detailInfoUrl = null,
  }) {
    return _then(_$ResultImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      detailInfoUrl: null == detailInfoUrl
          ? _value.detailInfoUrl
          : detailInfoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl extends _Result {
  const _$ResultImpl(
      {required this.name, @JsonKey(name: "url") required this.detailInfoUrl})
      : super._();

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: "url")
  final String detailInfoUrl;

  @override
  String toString() {
    return 'Result(name: $name, detailInfoUrl: $detailInfoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.detailInfoUrl, detailInfoUrl) ||
                other.detailInfoUrl == detailInfoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, detailInfoUrl);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result extends Result {
  const factory _Result(
          {required final String name,
          @JsonKey(name: "url") required final String detailInfoUrl}) =
      _$ResultImpl;
  const _Result._() : super._();

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: "url")
  String get detailInfoUrl;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
