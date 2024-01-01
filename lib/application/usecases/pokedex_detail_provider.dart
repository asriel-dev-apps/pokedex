import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/domain/types/pokemon.dart';

final pokemonDetailDataProvider = FutureProvider.autoDispose
    .family<Pokemon, Pokemon>((ref, pokemonSimpleData) async {
  try {
    final res = await http.get(Uri.parse(pokemonSimpleData.detailApiUrl));
    final Map<String, dynamic> json = jsonDecode(res.body);
    // print("🍎$json");

    // TODO: Pokemon.fromBaseData と　fromDetailDataのファクトリを作る？
    final Pokemon pokemonDetailData = Pokemon.fromJson(json).copyWith(
      id: pokemonSimpleData.id,
      name: pokemonSimpleData.name,
      detailApiUrl: pokemonSimpleData.detailApiUrl,
      updatedAt: DateTime.now(),
    );
    print('🐱$pokemonDetailData');
    return pokemonDetailData;
  } catch (e) {
    print("🐸$e");
    rethrow;
  }
});
