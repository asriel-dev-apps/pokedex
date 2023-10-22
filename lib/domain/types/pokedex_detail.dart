// import 'package:my_app/domain/types/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/types/pokedex_detail_sprites.dart';

part 'pokedex_detail.freezed.dart';
part 'pokedex_detail.g.dart';

// モデル定義：ポケモンの情報
@freezed
class PokedexDetail with _$PokedexDetail {
  const factory PokedexDetail({
    /// ID
    required int? id,

    /// 名前
    required String? name,

    /// 画像のURL
    required PokedexSpritesInDetail? sprites,
  }) = _PokedexDetail;

  // json形式で受け取るためのコードを生成するために記述
  factory PokedexDetail.fromJson(Map<String, dynamic> json) =>
      _$PokedexDetailFromJson(json);
}
