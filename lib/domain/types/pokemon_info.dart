// import 'package:my_app/domain/types/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_info.freezed.dart';
part 'pokemon_info.g.dart';

// モデル定義：ポケモンの情報
@freezed
class PokemonInfo with _$PokemonInfo {
  const factory PokemonInfo({
    /// ID
    required String? id,

    /// 名前
    required String? name,

    /// 画像のURL
    required String? imageUrl,
  }) = _PokemonInfo;

  // json形式で受け取るためのコードを生成するために記述
  factory PokemonInfo.fromJson(Map<String, dynamic> json) =>
      _$PokemonInfoFromJson(json);
}
