// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_images.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonImages _$PokemonImagesFromJson(Map<String, dynamic> json) {
  return _PokemonImages.fromJson(json);
}

/// @nodoc
mixin _$PokemonImages {
  /// 正面画像URL
  String? get frontDefault => throw _privateConstructorUsedError;

  /// 背面画像URL
  String? get backDefault => throw _privateConstructorUsedError;

  /// その他の画像URL（公式画像など）
  Map<String, dynamic>? get other => throw _privateConstructorUsedError;

  /// versionごとの画像URL
  Map<String, dynamic>? get versions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonImagesCopyWith<PokemonImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonImagesCopyWith<$Res> {
  factory $PokemonImagesCopyWith(
          PokemonImages value, $Res Function(PokemonImages) then) =
      _$PokemonImagesCopyWithImpl<$Res, PokemonImages>;
  @useResult
  $Res call(
      {String? frontDefault,
      String? backDefault,
      Map<String, dynamic>? other,
      Map<String, dynamic>? versions});
}

/// @nodoc
class _$PokemonImagesCopyWithImpl<$Res, $Val extends PokemonImages>
    implements $PokemonImagesCopyWith<$Res> {
  _$PokemonImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? backDefault = freezed,
    Object? other = freezed,
    Object? versions = freezed,
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
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      versions: freezed == versions
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonImagesImplCopyWith<$Res>
    implements $PokemonImagesCopyWith<$Res> {
  factory _$$PokemonImagesImplCopyWith(
          _$PokemonImagesImpl value, $Res Function(_$PokemonImagesImpl) then) =
      __$$PokemonImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? frontDefault,
      String? backDefault,
      Map<String, dynamic>? other,
      Map<String, dynamic>? versions});
}

/// @nodoc
class __$$PokemonImagesImplCopyWithImpl<$Res>
    extends _$PokemonImagesCopyWithImpl<$Res, _$PokemonImagesImpl>
    implements _$$PokemonImagesImplCopyWith<$Res> {
  __$$PokemonImagesImplCopyWithImpl(
      _$PokemonImagesImpl _value, $Res Function(_$PokemonImagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? backDefault = freezed,
    Object? other = freezed,
    Object? versions = freezed,
  }) {
    return _then(_$PokemonImagesImpl(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      backDefault: freezed == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      other: freezed == other
          ? _value._other
          : other // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      versions: freezed == versions
          ? _value._versions
          : versions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PokemonImagesImpl implements _PokemonImages {
  const _$PokemonImagesImpl(
      {this.frontDefault,
      this.backDefault,
      final Map<String, dynamic>? other,
      final Map<String, dynamic>? versions})
      : _other = other,
        _versions = versions;

  factory _$PokemonImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonImagesImplFromJson(json);

  /// 正面画像URL
  @override
  final String? frontDefault;

  /// 背面画像URL
  @override
  final String? backDefault;

  /// その他の画像URL（公式画像など）
  final Map<String, dynamic>? _other;

  /// その他の画像URL（公式画像など）
  @override
  Map<String, dynamic>? get other {
    final value = _other;
    if (value == null) return null;
    if (_other is EqualUnmodifiableMapView) return _other;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// versionごとの画像URL
  final Map<String, dynamic>? _versions;

  /// versionごとの画像URL
  @override
  Map<String, dynamic>? get versions {
    final value = _versions;
    if (value == null) return null;
    if (_versions is EqualUnmodifiableMapView) return _versions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'PokemonImages(frontDefault: $frontDefault, backDefault: $backDefault, other: $other, versions: $versions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonImagesImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.backDefault, backDefault) ||
                other.backDefault == backDefault) &&
            const DeepCollectionEquality().equals(other._other, this._other) &&
            const DeepCollectionEquality().equals(other._versions, _versions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      frontDefault,
      backDefault,
      const DeepCollectionEquality().hash(_other),
      const DeepCollectionEquality().hash(_versions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonImagesImplCopyWith<_$PokemonImagesImpl> get copyWith =>
      __$$PokemonImagesImplCopyWithImpl<_$PokemonImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonImagesImplToJson(
      this,
    );
  }
}

abstract class _PokemonImages implements PokemonImages {
  const factory _PokemonImages(
      {final String? frontDefault,
      final String? backDefault,
      final Map<String, dynamic>? other,
      final Map<String, dynamic>? versions}) = _$PokemonImagesImpl;

  factory _PokemonImages.fromJson(Map<String, dynamic> json) =
      _$PokemonImagesImpl.fromJson;

  @override

  /// 正面画像URL
  String? get frontDefault;
  @override

  /// 背面画像URL
  String? get backDefault;
  @override

  /// その他の画像URL（公式画像など）
  Map<String, dynamic>? get other;
  @override

  /// versionごとの画像URL
  Map<String, dynamic>? get versions;
  @override
  @JsonKey(ignore: true)
  _$$PokemonImagesImplCopyWith<_$PokemonImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
