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
  /// ID
  String? get id => throw _privateConstructorUsedError;

  /// 名前
  String? get name => throw _privateConstructorUsedError;

  /// 画像のURL
  String? get imageUrl => throw _privateConstructorUsedError;

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
  $Res call({String? id, String? name, String? imageUrl});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({String? id, String? name, String? imageUrl});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$PokemonInfoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonInfoImpl implements _PokemonInfo {
  const _$PokemonInfoImpl(
      {required this.id, required this.name, required this.imageUrl});

  factory _$PokemonInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonInfoImplFromJson(json);

  /// ID
  @override
  final String? id;

  /// 名前
  @override
  final String? name;

  /// 画像のURL
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'PokemonInfo(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl);

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
      {required final String? id,
      required final String? name,
      required final String? imageUrl}) = _$PokemonInfoImpl;

  factory _PokemonInfo.fromJson(Map<String, dynamic> json) =
      _$PokemonInfoImpl.fromJson;

  @override

  /// ID
  String? get id;
  @override

  /// 名前
  String? get name;
  @override

  /// 画像のURL
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$PokemonInfoImplCopyWith<_$PokemonInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
