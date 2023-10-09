import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:pokedex/domain/types/pokedex_list.dart';
import 'package:pokedex/ui/widgets/pokedex_list_tile.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  // 一旦ここにfetchメソッドを定義
  Future<List<Widget>> fetchPokeAPI() async {
    List<Widget> listTiles = [];
    try {
      // BWまでしか動くアイコンがないため No.649 まで取得
      final response = await http
          .get(Uri.parse('https://pokeapi.co/api/v2/pokemon/?limit=649'));

      final responseJson = jsonDecode(response.body);

      final pokemonDataList = PokedexList.fromJson(responseJson);

      final results = pokemonDataList.results;

      final resultsMap = results!.asMap();

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(child: Text('Pokedex')),
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
