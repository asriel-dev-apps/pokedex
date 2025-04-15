// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokedex_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokedexEntry _$PokedexEntryFromJson(Map<String, dynamic> json) {
  return _PokedexEntry.fromJson(json);
}

/// @nodoc
mixin _$PokedexEntry {
  /// ID (図鑑番号)
  dynamic get id => throw _privateConstructorUsedError;

  /// 名前
  String get name => throw _privateConstructorUsedError;

  /// 詳細情報取得APIのURL
  String get detailApiUrl => throw _privateConstructorUsedError;

  /// Serializes this PokedexEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokedexEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokedexEntryCopyWith<PokedexEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexEntryCopyWith<$Res> {
  factory $PokedexEntryCopyWith(
          PokedexEntry value, $Res Function(PokedexEntry) then) =
      _$PokedexEntryCopyWithImpl<$Res, PokedexEntry>;
  @useResult
  $Res call({dynamic id, String name, String detailApiUrl});
}

/// @nodoc
class _$PokedexEntryCopyWithImpl<$Res, $Val extends PokedexEntry>
    implements $PokedexEntryCopyWith<$Res> {
  _$PokedexEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokedexEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? detailApiUrl = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      detailApiUrl: null == detailApiUrl
          ? _value.detailApiUrl
          : detailApiUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokedexEntryImplCopyWith<$Res>
    implements $PokedexEntryCopyWith<$Res> {
  factory _$$PokedexEntryImplCopyWith(
          _$PokedexEntryImpl value, $Res Function(_$PokedexEntryImpl) then) =
      __$$PokedexEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic id, String name, String detailApiUrl});
}

/// @nodoc
class __$$PokedexEntryImplCopyWithImpl<$Res>
    extends _$PokedexEntryCopyWithImpl<$Res, _$PokedexEntryImpl>
    implements _$$PokedexEntryImplCopyWith<$Res> {
  __$$PokedexEntryImplCopyWithImpl(
      _$PokedexEntryImpl _value, $Res Function(_$PokedexEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokedexEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? detailApiUrl = null,
  }) {
    return _then(_$PokedexEntryImpl(
      id: freezed == id ? _value.id! : id,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      detailApiUrl: null == detailApiUrl
          ? _value.detailApiUrl
          : detailApiUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokedexEntryImpl implements _PokedexEntry {
  _$PokedexEntryImpl({this.id = -1, this.name = "", this.detailApiUrl = ""});

  factory _$PokedexEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokedexEntryImplFromJson(json);

  /// ID (図鑑番号)
  @override
  @JsonKey()
  final dynamic id;

  /// 名前
  @override
  @JsonKey()
  final String name;

  /// 詳細情報取得APIのURL
  @override
  @JsonKey()
  final String detailApiUrl;

  @override
  String toString() {
    return 'PokedexEntry(id: $id, name: $name, detailApiUrl: $detailApiUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokedexEntryImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.detailApiUrl, detailApiUrl) ||
                other.detailApiUrl == detailApiUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(id), name, detailApiUrl);

  /// Create a copy of PokedexEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokedexEntryImplCopyWith<_$PokedexEntryImpl> get copyWith =>
      __$$PokedexEntryImplCopyWithImpl<_$PokedexEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokedexEntryImplToJson(
      this,
    );
  }
}

abstract class _PokedexEntry implements PokedexEntry {
  factory _PokedexEntry(
      {final dynamic id,
      final String name,
      final String detailApiUrl}) = _$PokedexEntryImpl;

  factory _PokedexEntry.fromJson(Map<String, dynamic> json) =
      _$PokedexEntryImpl.fromJson;

  /// ID (図鑑番号)
  @override
  dynamic get id;

  /// 名前
  @override
  String get name;

  /// 詳細情報取得APIのURL
  @override
  String get detailApiUrl;

  /// Create a copy of PokedexEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokedexEntryImplCopyWith<_$PokedexEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
