import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:pokedex/domain/types/pokemon_list.dart';
import 'package:pokedex/presentation/ui/widgets/pokedex_list_tile.dart';
import 'package:pokedex/domain/types/pokemon_info.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/ui/router/go_router.dart';
import 'package:pokedex/presentation/ui/router/page_path.dart';
// import 'dart:developer';


class ListPage extends ConsumerWidget {
  const ListPage({super.key});

  // 一旦ここにfetchメソッドを定義
  // apiで取得したものをwidgetに入れているから、戻り値に＜list<>＞
  Future<List<Widget>> fetchPokeAPI() async {
    List<Widget> listTiles = [];
    try {
      // BWまでしか動くアイコンがないため No.649 まで取得
      final response = await http
          .get(Uri.parse('https://pokeapi.co/api/v2/pokemon/?limit=20'));

      final responseJson = jsonDecode(response.body);

// 
      final pokemonDataList = PokemonList.fromJson(responseJson);

      final results = pokemonDataList.results;

      final resultsMap = results!.asMap();
      // log(resultsMap.toString());
      // debugPrint(resultsMap.toString());
      final List<String> urlList = [];
      resultsMap.forEach((key, value) {
        // debugPrint((value!['url'].runtimeType.toString()));
        urlList.add(value!['url'].toString());
      });
      // URLリストにそれぞれのURL格納
      // debugPrint(urlList.toString());
      final Map<String,List<String>> pokemonMapDataList = {};
      await Future.forEach(urlList,(element) async{
        final response = await http.get(Uri.parse(element.toString()));
        Map<String, dynamic> map = jsonDecode(response.body) ?? '';
        final pokemonDataInfo = PokemonInfo.fromJson(map);
        final responeTypes = pokemonDataInfo.types;
        final typeLength = pokemonDataInfo.types!.length;

        var types = '';
        for (int i = 0; i < typeLength; i++){
          String responseType = responeTypes![i]['type']['url'].toString();
          final responeUrl = await http
            .get(Uri.parse(responseType));
          final responeTypejson = jsonDecode(responeUrl.body);
          // log(responeTypejson['names'].toString());
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
        Map <String,List<String>> pokemonMapDataListToUrl = {
            map['id'].toString():
          [
            responeJsonSpecies['names'].firstWhere((element) => element['language']['name'] == 'en')['name'].toString(),
            pokemonDataInfo.sprites!['other']['official-artwork']['front_default'].toString(),
            responeJsonSpecies['flavor_text_entries'].firstWhere((element) => element['language']['name'] == 'en')['flavor_text'].toString(),
            types.toString(),
            pokemonDataInfo.height!.toString(),
            pokemonDataInfo.weight!.toString(),


          ],
        };
        pokemonMapDataList.addAll(pokemonMapDataListToUrl);
        // return pokemonMapDataListToUrl;
      });
      // これで、ポケモンをとってこれる
      // debugPrint(pokemonMapDataList.toString());
      // debugPrint(pokemonMapDataList['1']![0].toString());

      listTiles = resultsMap.entries
          .map(
            (entry) => PokedexListTile(
              id: entry.key + 1,
              result: entry.value,
            ),
          )
          .toList();
    } catch (e) {
      debugPrint("🐸$e");
    }

    return listTiles;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(child: Text('Pokedex')),
        actions: [
          IconButton(
            onPressed: () {
              final router = ref.read(goRouterProvider);
              router.pushNamed(PageId.artwork.routeName);
            },
            icon: const Icon(Icons.arrow_forward),
          ),
          IconButton(
            onPressed: () {
              final router = ref.read(goRouterProvider);
              router.pushNamed(PageId.table.routeName);
            },
            icon: const Icon(Icons.arrow_left),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 246, 124, 86),
      body: FutureBuilder(
        future: fetchPokeAPI(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final listTiles = snapshot.data;
            return Scrollbar(
              child: ListView.builder(
                itemCount: listTiles!.length,
                itemBuilder: (BuildContext context, int index) {
                  return listTiles[index];
                },
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
