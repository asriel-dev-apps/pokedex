import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/ui/router/go_router.dart';
import 'package:pokedex/ui/router/page_path.dart';

class ListPage extends ConsumerWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // リストタイルを作成
    final listTiles = [
      ListTile(
        tileColor: Color.fromARGB(255, 211, 62, 68),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: const Text('フシギダネ'),
        leading: Image.asset("assets/images/1.png"),
        trailing: Image.asset(
          "assets/images/pokeball.png",
          height: 40,
          width: 40,
        ),
        onTap: () {
          final router = ref.read(goRouterProvider);
          router.pushNamed(
            PageId.detail.routeName,
          );
        },
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('一覧ページ'),
      ),
      body: ListView.builder(
        itemCount: listTiles.length,
        itemBuilder: (BuildContext context, int i) {
          return listTiles[i];
        },
      ),
    );
  }
}
