import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/repository/repository_interface.dart';
import 'package:pokedex/domain/types/pokedex_list.dart';
import 'package:pokedex/ui/widgets/pokedex_list_tile.dart';

class ListPage extends ConsumerWidget {
  const ListPage({super.key});

  // TODO: 煩雑になっているため直す
  int substringId(String url) {
    List urlList = url.split("/");
    urlList.removeWhere((e) => e == "v2");
    String str = urlList.join("/");

    final match = RegExp(r'(\d+)').stringMatch(str);
    final id = int.parse(match!);
    return id;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokedexList = ref.watch(pokedexListRepositoryProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(child: Text('Pokedex')),
      ),
      backgroundColor: const Color.fromARGB(255, 246, 124, 86),
      body: FutureBuilder(
        future: pokedexList.fetch(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final pokedexList = snapshot.data as PokedexList;
            final results = pokedexList.results;
            if (results != null && results.isNotEmpty) {
              List<PokedexListTile> listTiles = results
                  .map(
                    (e) => PokedexListTile(
                      id: substringId(e!.url),
                      result: e,
                    ),
                  )
                  .toList();

              return Scrollbar(
                child: ListView.builder(
                  itemCount: listTiles.length,
                  itemBuilder: (BuildContext context, int index) {
                    return listTiles[index];
                  },
                ),
              );
            } else {
              return Container();
            }
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
