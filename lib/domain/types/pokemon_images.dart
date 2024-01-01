// import 'package:my_app/domain/types/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_images.freezed.dart';
part 'pokemon_images.g.dart';

// モデル定義：ポケモンの画像
@freezed
class PokemonImages with _$PokemonImages {
  // snake case -> lower camel case
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PokemonImages({
    /// 正面画像URL
    String? frontDefault,

    /// 背面画像URL
    String? backDefault,

    /// その他の画像URL（公式画像など）
    Map<String, dynamic>? other,

    /// versionごとの画像URL
    Map<String, dynamic>? versions,
  }) = _PokemonImages;

  // jsonからモデルに変換する factory constructor
  factory PokemonImages.fromJson(Map<String, dynamic> json) =>
      _$PokemonImagesFromJson(json);
}
