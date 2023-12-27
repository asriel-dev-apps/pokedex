import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/domain/types/pokemon_info.dart';
// import 'package:pokedex/domain/types/pokemon_species.dart';

import 'package:pokedex/presentation/ui/widgets/pokedex_info_panel.dart';
import 'dart:developer';
// import 'package:collection/collection.dart';
class Test{
    final String? userId;
      const Test({required this.userId});
  // ここで、ポケモンの詳細情報取得
  Future<Widget> fetchPokeAPI() async {
    Widget infoWigget = const PokemdexInfoPanel(
      name: 'aaa',
      hoge: 'aaa',
      img:'assets/images/sword_shield_pokedex_background.png',
      infoText: 'test',
      type: 'test',
      height: 1,
      weight: 1,
      number: 1,
      );
    try {
      final response = await http
          .get(Uri.parse('https://pokeapi.co/api/v2/pokemon/$userId/'));

      // log(response.toString());

      // final responseJson = jsonDecode(response.body);
      Map<String, dynamic> map = jsonDecode(response.body) ?? '';

      log(map['id'].runtimeType.toString());
      final pokemonDataInfo = PokemonInfo.fromJson(map);
      // log(pokemonDataInfo.types!.length.toString());

      final responeTypes = pokemonDataInfo.types;
      final typeLength = pokemonDataInfo.types!.length;

      var types = '';
      for (int i = 0; i < typeLength; i++){
        String responseType = responeTypes![i]['type']['url'].toString();
        final responeUrl = await http
          .get(Uri.parse(responseType));
        final responeTypejson = jsonDecode(responeUrl.body);
        log(responeTypejson['names'].toString());
        var type = responeTypejson['names'].firstWhere((element) => element['language']['name'] == 'en')['name'].toString();
        if (i > 0){
          types += '/';
        }
        types += type;
      }
      // log(types.toString());
      final speciesUrl = pokemonDataInfo.species;

      final responsespeciesUrl = await http
          .get(Uri.parse(speciesUrl!['url']));
      
      final responeJsonSpecies = jsonDecode(responsespeciesUrl.body);
      log(responeJsonSpecies['names'].firstWhere((element) => element['language']['name'] == 'en')['name'].toString());
      log(responeJsonSpecies['flavor_text_entries'][0].toString());
      // final aaa = responeJsonSpecies['flavor_text_entries'][0];
      // log(aaa.toString());
      // Map<String, dynamic> flavorText = aaa.firstWhere((dynamic element) {
      //   return element['language']['name'] == 'ja';
      // },orElse: () => '');
      // log(flavorText.toString());

      log(responeJsonSpecies['flavor_text_entries'].firstWhere((element) => element['language']['name'] == 'en').toString());

      infoWigget = PokemdexInfoPanel(
        name: responeJsonSpecies['names'].firstWhere((element) => element['language']['name'] == 'en')['name'].toString(),
        hoge:'sss',
        img:pokemonDataInfo.sprites!['other']['official-artwork']['front_default'].toString(),
        infoText: responeJsonSpecies['flavor_text_entries'].firstWhere((element) => element['language']['name'] == 'en')['flavor_text'].toString(),
        type: types.toString(),
        height: pokemonDataInfo.height!,
        weight: pokemonDataInfo.weight!,
        number: int.parse(userId!),
        );
    } catch (e) {
      debugPrint("雨先$e");
    }
    return infoWigget;
  }
}