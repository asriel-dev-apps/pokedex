import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/application/usecases/pokedex_provider.dart';
import 'package:pokedex/application/usecases/searched_pokedex_provider.dart';
import 'package:pokedex/domain/types/pokemon.dart';
import 'package:pokedex/ui/widgets/pokedex_list_tile.dart';

class ListPage extends ConsumerStatefulWidget {
  const ListPage({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ListPageState();
}

class _ListPageState extends ConsumerState<ListPage> {
  final TextEditingController _textEditingController = TextEditingController();

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
    final Widget pokedexTiles = ref.watch(pokedexProvider).when(
          data: (data) {
            final List<Pokemon?> sortedPokedex =
                ref.watch(extractPokemonsProvider(data));

            if (sortedPokedex.isEmpty) return ListView();

            final List<PokedexListTile> listTiles =
                sortedPokedex.map((e) => PokedexListTile(pokemon: e!)).toList();
            return ListView.builder(
                itemCount: listTiles.length,
                itemBuilder: (BuildContext context, int index) {
                  return listTiles[index];
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
              ),
              DropdownMenuItem(
                value: SortType.idDESC,
                child: Text('ID降順'),
              ),
              DropdownMenuItem(
                value: SortType.nameASC,
                child: Text('名前昇順'),
              ),
              DropdownMenuItem(
                value: SortType.nameDESC,
                child: Text('名前降順'),
              ),
            ],
            onChanged: (value) => ref
                .read(pokedexSrcSortTypeProvider.notifier)
                .update((state) => value!),
          )
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
            Expanded(child: pokedexTiles),
          ],
        ),
      ),
    );
  }
}
