// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokedex_src.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokedexSrc _$PokedexSrcFromJson(Map<String, dynamic> json) {
  return _PokedexSrc.fromJson(json);
}

/// @nodoc
mixin _$PokedexSrc {
  /// 全ポケモン数
  int get count => throw _privateConstructorUsedError;

  /// 次ページのURL
  String? get next => throw _privateConstructorUsedError;

  /// 前ページのURL
  String? get previous => throw _privateConstructorUsedError;

  /// [ポケモン名 と 詳細情報のURL を有する Map<String, String>]
  @JsonKey(name: "results")
  List<Result> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokedexSrcCopyWith<PokedexSrc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexSrcCopyWith<$Res> {
  factory $PokedexSrcCopyWith(
          PokedexSrc value, $Res Function(PokedexSrc) then) =
      _$PokedexSrcCopyWithImpl<$Res, PokedexSrc>;
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      @JsonKey(name: "results") List<Result> results});
}

/// @nodoc
class _$PokedexSrcCopyWithImpl<$Res, $Val extends PokedexSrc>
    implements $PokedexSrcCopyWith<$Res> {
  _$PokedexSrcCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$PokedexSrcImplCopyWith<$Res>
    implements $PokedexSrcCopyWith<$Res> {
  factory _$$PokedexSrcImplCopyWith(
          _$PokedexSrcImpl value, $Res Function(_$PokedexSrcImpl) then) =
      __$$PokedexSrcImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      @JsonKey(name: "results") List<Result> results});
}

/// @nodoc
class __$$PokedexSrcImplCopyWithImpl<$Res>
    extends _$PokedexSrcCopyWithImpl<$Res, _$PokedexSrcImpl>
    implements _$$PokedexSrcImplCopyWith<$Res> {
  __$$PokedexSrcImplCopyWithImpl(
      _$PokedexSrcImpl _value, $Res Function(_$PokedexSrcImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$PokedexSrcImpl(
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
class _$PokedexSrcImpl implements _PokedexSrc {
  const _$PokedexSrcImpl(
      {required this.count,
      this.next,
      this.previous,
      @JsonKey(name: "results") required final List<Result> results})
      : _results = results;

  factory _$PokedexSrcImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokedexSrcImplFromJson(json);

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
    return 'PokedexSrc(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokedexSrcImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokedexSrcImplCopyWith<_$PokedexSrcImpl> get copyWith =>
      __$$PokedexSrcImplCopyWithImpl<_$PokedexSrcImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokedexSrcImplToJson(
      this,
    );
  }
}

abstract class _PokedexSrc implements PokedexSrc {
  const factory _PokedexSrc(
          {required final int count,
          final String? next,
          final String? previous,
          @JsonKey(name: "results") required final List<Result> results}) =
      _$PokedexSrcImpl;

  factory _PokedexSrc.fromJson(Map<String, dynamic> json) =
      _$PokedexSrcImpl.fromJson;

  @override

  /// 全ポケモン数
  int get count;
  @override

  /// 次ページのURL
  String? get next;
  @override

  /// 前ページのURL
  String? get previous;
  @override

  /// [ポケモン名 と 詳細情報のURL を有する Map<String, String>]
  @JsonKey(name: "results")
  List<Result> get results;
  @override
  @JsonKey(ignore: true)
  _$$PokedexSrcImplCopyWith<_$PokedexSrcImpl> get copyWith =>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.detailInfoUrl, detailInfoUrl) ||
                other.detailInfoUrl == detailInfoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, detailInfoUrl);

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
