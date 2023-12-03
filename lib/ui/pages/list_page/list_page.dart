import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/application/state/pokedex_list_provider.dart';
import 'package:pokedex/application/state/searched_pokedex_list_provider.dart';
import 'package:pokedex/ui/widgets/pokedex_list_tile.dart';

class ListPage extends ConsumerStatefulWidget {
  const ListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ListPageState();
}

class _ListPageState extends ConsumerState<ListPage> {
  final TextEditingController _textEditingController = TextEditingController();

  // TODO: v2の2にヒットしてしまうため、削除しておことでid（（数字）を取得しているが、汎用性が低いため、修正
  int substringId(String url) {
    List<String> urlList = url.split("/");
    urlList.removeWhere((e) => e == "v2");
    String str = urlList.join("/");

    final match = RegExp(r'(\d+)').stringMatch(str);
    final id = int.parse(match!);
    return id;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Widget pokedexListTiles = ref.watch(pokedexListProvider).when(
          data: (data) {
            final List<PokedexListTile> listTiles = data
                .map((e) => PokedexListTile(id: substringId(e!.url), result: e))
                .toList();
            final List<PokedexListTile?> sortedListTiles =
                ref.watch(sortedPokedexListTilesProvider(listTiles));
            return ListView.builder(
                itemCount: sortedListTiles.length,
                itemBuilder: (BuildContext context, int index) {
                  return sortedListTiles[index];
                });
          },
          error: (err, _) => const Text('ポケモンの取得に失敗しました'),
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
                controller: _textEditingController,
                // 検索ボックスに入力されると、fuzzySearchRegExpProviderの状態が更新
                onChanged: (value) => ref
                    .read(fuzzySearchStringProvider.notifier)
                    .update((state) => _textEditingController.text),
              ),
            ),
            Expanded(child: pokedexListTiles),
          ],
        ),
      ),
    );
  }
}
