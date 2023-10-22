// import 'package:my_app/domain/types/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokedex_detail_sprites.freezed.dart';
part 'pokedex_detail_sprites.g.dart';

// モデル定義：ポケモンの情報
@freezed
class PokedexSpritesInDetail with _$PokedexSpritesInDetail {
  // snake case -> lower camel case
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PokedexSpritesInDetail({
    /// 正面画像URL
    required String? frontDefault,

    /// 背面画像URL
    required String? backDefault,

    /// その他の画像URL（公式画像など）
    required Map<String, dynamic>? other,

    /// versionごとの画像URL
    required Map<String, dynamic>? versions,
  }) = _PokedexSpritesInDetail;

  // json形式で受け取るためのコードを生成するために記述
  factory PokedexSpritesInDetail.fromJson(Map<String, dynamic> json) =>
      _$PokedexSpritesInDetailFromJson(json);
}
