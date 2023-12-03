import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/application/state/pokedex_list_provider.dart';
import 'package:pokedex/application/state/searched_pokedex_list_provider.dart';
import 'package:pokedex/ui/widgets/pokedex_list_tile.dart';

class ListPage extends ConsumerWidget {
  const ListPage({super.key});

  // TODO: v2の2にヒットしてしまうため、削除しておことでid（（数字）を取得しているが、汎用性が低いため、修正
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
    TextEditingController textEditingController = TextEditingController();
    final pokedexListTiles = ref.watch(pokedexListProvider).when(
          data: (data) {
            final listTiles = data
                .map((e) => PokedexListTile(id: substringId(e!.url), result: e))
                .toList();
            final sortedListTiles =
                ref.watch(sortedPokedexListTilesProvider(listTiles));
            return ListView.builder(
                itemCount: listTiles.length,
                itemBuilder: (BuildContext context, int index) {
                  return sortedListTiles[index];
                });
          },
          error: (err, _) => Text(''),
          loading: () => const Center(child: CircularProgressIndicator()),
        );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(child: Text('Pokedex')),
        actions: [
          DropdownButton(
              iconEnabledColor: Colors.white,
              items: const [
                DropdownMenuItem(
                  value: SortType.idASC,
                  child: Text('ID昇順'),
                  // child: Icon(
                  //   Icons.sort,
                  //   color: Colors.black,
                  // ),
                ),
                DropdownMenuItem(
                  value: SortType.idDESC,
                  child: Text('ID降順'),
                ),
                DropdownMenuItem(
                  value: SortType.nameASC,
                  child: Text('名前昇順'),
                  // child: Icon(
                  //   Icons.sort_by_alpha,
                  //   color: Colors.black,
                  // ),
                ),
                DropdownMenuItem(
                  value: SortType.nameDESC,
                  child: Text('名前降順'),
                ),
              ],
              onChanged: (value) =>
                  ref.read(pokedexListSortTypeProvider.notifier).state = value!)
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 246, 124, 86),
      body: Scrollbar(
        child: Column(
          children: [
            Container(
              height: 60,
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: TextFormField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'ポケモンの名前を入力してください',
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                controller: textEditingController,
              ),
            ),
            Expanded(child: pokedexListTiles),
          ],
        ),
      ),
    );
  }
}
