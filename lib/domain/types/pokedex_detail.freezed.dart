// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokedex_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokedexDeatail _$PokedexDeatailFromJson(Map<String, dynamic> json) {
  return _PokedexDeatail.fromJson(json);
}

/// @nodoc
mixin _$PokedexDeatail {
  /// ID
  int? get id => throw _privateConstructorUsedError;

  /// 名前
  String? get name => throw _privateConstructorUsedError;

  /// 画像のURL
  PokedexSpritesInDetail? get sprites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokedexDeatailCopyWith<PokedexDeatail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexDeatailCopyWith<$Res> {
  factory $PokedexDeatailCopyWith(
          PokedexDeatail value, $Res Function(PokedexDeatail) then) =
      _$PokedexDeatailCopyWithImpl<$Res, PokedexDeatail>;
  @useResult
  $Res call({int? id, String? name, PokedexSpritesInDetail? sprites});

  $PokedexSpritesInDetailCopyWith<$Res>? get sprites;
}

/// @nodoc
class _$PokedexDeatailCopyWithImpl<$Res, $Val extends PokedexDeatail>
    implements $PokedexDeatailCopyWith<$Res> {
  _$PokedexDeatailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? sprites = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sprites: freezed == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokedexSpritesInDetail?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokedexSpritesInDetailCopyWith<$Res>? get sprites {
    if (_value.sprites == null) {
      return null;
    }

    return $PokedexSpritesInDetailCopyWith<$Res>(_value.sprites!, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokedexDeatailImplCopyWith<$Res>
    implements $PokedexDeatailCopyWith<$Res> {
  factory _$$PokedexDeatailImplCopyWith(_$PokedexDeatailImpl value,
          $Res Function(_$PokedexDeatailImpl) then) =
      __$$PokedexDeatailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, PokedexSpritesInDetail? sprites});

  @override
  $PokedexSpritesInDetailCopyWith<$Res>? get sprites;
}

/// @nodoc
class __$$PokedexDeatailImplCopyWithImpl<$Res>
    extends _$PokedexDeatailCopyWithImpl<$Res, _$PokedexDeatailImpl>
    implements _$$PokedexDeatailImplCopyWith<$Res> {
  __$$PokedexDeatailImplCopyWithImpl(
      _$PokedexDeatailImpl _value, $Res Function(_$PokedexDeatailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? sprites = freezed,
  }) {
    return _then(_$PokedexDeatailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sprites: freezed == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokedexSpritesInDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokedexDeatailImpl implements _PokedexDeatail {
  const _$PokedexDeatailImpl(
      {required this.id, required this.name, required this.sprites});

  factory _$PokedexDeatailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokedexDeatailImplFromJson(json);

  /// ID
  @override
  final int? id;

  /// 名前
  @override
  final String? name;

  /// 画像のURL
  @override
  final PokedexSpritesInDetail? sprites;

  @override
  String toString() {
    return 'PokedexDeatail(id: $id, name: $name, sprites: $sprites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokedexDeatailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sprites, sprites) || other.sprites == sprites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, sprites);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokedexDeatailImplCopyWith<_$PokedexDeatailImpl> get copyWith =>
      __$$PokedexDeatailImplCopyWithImpl<_$PokedexDeatailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokedexDeatailImplToJson(
      this,
    );
  }
}

abstract class _PokedexDeatail implements PokedexDeatail {
  const factory _PokedexDeatail(
      {required final int? id,
      required final String? name,
      required final PokedexSpritesInDetail? sprites}) = _$PokedexDeatailImpl;

  factory _PokedexDeatail.fromJson(Map<String, dynamic> json) =
      _$PokedexDeatailImpl.fromJson;

  @override

  /// ID
  int? get id;
  @override

  /// 名前
  String? get name;
  @override

  /// 画像のURL
  PokedexSpritesInDetail? get sprites;
  @override
  @JsonKey(ignore: true)
  _$$PokedexDeatailImplCopyWith<_$PokedexDeatailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
