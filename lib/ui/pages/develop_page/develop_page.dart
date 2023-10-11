import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/types/pokedex_detail.dart';
// import 'package:pokedex/ui/widgets/custom_list.dart';

class DevelopPage extends ConsumerStatefulWidget {
  const DevelopPage({super.key});

  @override
  DevelopPageState createState() => DevelopPageState();
}

class DevelopPageState extends ConsumerState<DevelopPage> {
  @override
  void initState() {
    super.initState();
  }

  Future<List<Widget>> fetchPokeAPI() async {
    List<Widget> listTiles = [];

    try {
      for (int i = 1; i <= 3; i++) {
        // stub json to Map<String, dynamic>
        String jsonString =
            await rootBundle.loadString('assets/json/pokemon_$i.json');

        final decodedBody = json.decode(jsonString);

        // PokemonInfoをリストで持つ
        PokedexDetail pokemon = PokedexDetail.fromJson(decodedBody);
        debugPrint("🍎$pokemon");
        // リストタイルを作成
        // listTiles.add(CustomListTile(pokemon: pokemon));
      }
    } catch (e) {
      debugPrint("🐸$e");
    }

    return listTiles;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('開発ページ'),
      ),
      backgroundColor: const Color.fromARGB(255, 246, 124, 86),
      body: FutureBuilder(
          future: fetchPokeAPI(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final listTiles = snapshot.data;
              return ListView.builder(
                itemCount: listTiles!.length,
                itemBuilder: (BuildContext context, int i) {
                  return listTiles[i];
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
