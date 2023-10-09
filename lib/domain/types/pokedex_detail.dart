// import 'package:my_app/domain/types/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/types/pokedex_sprites.dart';

part 'pokedex_detail.freezed.dart';
part 'pokedex_detail.g.dart';

// モデル定義：ポケモンの情報
@freezed
class PokedexDeatail with _$PokedexDeatail {
  const factory PokedexDeatail({
    /// ID
    required int? id,

    /// 名前
    required String? name,

    /// 画像のURL
    required PokedexSpritesInDetail? sprites,
  }) = _PokedexDeatail;

  // json形式で受け取るためのコードを生成するために記述
  factory PokedexDeatail.fromJson(Map<String, dynamic> json) =>
      _$PokedexDeatailFromJson(json);
}
