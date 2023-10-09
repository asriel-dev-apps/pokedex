// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokedex_sprites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokedexSpritesInDetail _$PokedexSpritesInDetailFromJson(
    Map<String, dynamic> json) {
  return _PokedexSpritesInDetail.fromJson(json);
}

/// @nodoc
mixin _$PokedexSpritesInDetail {
  /// 正面画像URL
  String? get frontDefault => throw _privateConstructorUsedError;

  /// 背面画像URL
  String? get backDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokedexSpritesInDetailCopyWith<PokedexSpritesInDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexSpritesInDetailCopyWith<$Res> {
  factory $PokedexSpritesInDetailCopyWith(PokedexSpritesInDetail value,
          $Res Function(PokedexSpritesInDetail) then) =
      _$PokedexSpritesInDetailCopyWithImpl<$Res, PokedexSpritesInDetail>;
  @useResult
  $Res call({String? frontDefault, String? backDefault});
}

/// @nodoc
class _$PokedexSpritesInDetailCopyWithImpl<$Res,
        $Val extends PokedexSpritesInDetail>
    implements $PokedexSpritesInDetailCopyWith<$Res> {
  _$PokedexSpritesInDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? backDefault = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      backDefault: freezed == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokedexSpritesInDetailImplCopyWith<$Res>
    implements $PokedexSpritesInDetailCopyWith<$Res> {
  factory _$$PokedexSpritesInDetailImplCopyWith(
          _$PokedexSpritesInDetailImpl value,
          $Res Function(_$PokedexSpritesInDetailImpl) then) =
      __$$PokedexSpritesInDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? frontDefault, String? backDefault});
}

/// @nodoc
class __$$PokedexSpritesInDetailImplCopyWithImpl<$Res>
    extends _$PokedexSpritesInDetailCopyWithImpl<$Res,
        _$PokedexSpritesInDetailImpl>
    implements _$$PokedexSpritesInDetailImplCopyWith<$Res> {
  __$$PokedexSpritesInDetailImplCopyWithImpl(
      _$PokedexSpritesInDetailImpl _value,
      $Res Function(_$PokedexSpritesInDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? backDefault = freezed,
  }) {
    return _then(_$PokedexSpritesInDetailImpl(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      backDefault: freezed == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PokedexSpritesInDetailImpl implements _PokedexSpritesInDetail {
  const _$PokedexSpritesInDetailImpl(
      {required this.frontDefault, required this.backDefault});

  factory _$PokedexSpritesInDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokedexSpritesInDetailImplFromJson(json);

  /// 正面画像URL
  @override
  final String? frontDefault;

  /// 背面画像URL
  @override
  final String? backDefault;

  @override
  String toString() {
    return 'PokedexSpritesInDetail(frontDefault: $frontDefault, backDefault: $backDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokedexSpritesInDetailImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.backDefault, backDefault) ||
                other.backDefault == backDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault, backDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokedexSpritesInDetailImplCopyWith<_$PokedexSpritesInDetailImpl>
      get copyWith => __$$PokedexSpritesInDetailImplCopyWithImpl<
          _$PokedexSpritesInDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokedexSpritesInDetailImplToJson(
      this,
    );
  }
}

abstract class _PokedexSpritesInDetail implements PokedexSpritesInDetail {
  const factory _PokedexSpritesInDetail(
      {required final String? frontDefault,
      required final String? backDefault}) = _$PokedexSpritesInDetailImpl;

  factory _PokedexSpritesInDetail.fromJson(Map<String, dynamic> json) =
      _$PokedexSpritesInDetailImpl.fromJson;

  @override

  /// 正面画像URL
  String? get frontDefault;
  @override

  /// 背面画像URL
  String? get backDefault;
  @override
  @JsonKey(ignore: true)
  _$$PokedexSpritesInDetailImplCopyWith<_$PokedexSpritesInDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}
