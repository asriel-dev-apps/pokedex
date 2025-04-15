// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokedex_entry.freezed.dart';
part 'pokedex_entry.g.dart';

@freezed
class PokedexEntry with _$PokedexEntry {
  factory PokedexEntry({
    /// ID (図鑑番号)
    @Default(-1) id,

    /// 名前
    @Default("") String name,

    /// 詳細情報取得APIのURL
    @Default("") String detailApiUrl,
  }) = _PokedexEntry;

  /// json から Pokemon型 に変換する factory constructor
  factory PokedexEntry.fromJson(Map<String, dynamic> json) =>
      _$PokedexEntryFromJson(json);
}
