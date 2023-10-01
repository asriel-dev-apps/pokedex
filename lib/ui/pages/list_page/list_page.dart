import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/ui/router/go_router.dart';
import 'package:pokedex/ui/router/page_path.dart';

class ListPage extends ConsumerWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('一覧ページ'),
        actions: [
          // 次へボタン
          IconButton(
              onPressed: () {
                final router = ref.read(goRouterProvider);
                router.pushNamed(
                  PageId.detail.routeName,
                );
              },
              icon: const Icon(Icons.arrow_forward)),
        ],
      ),
      body: const Center(
        child: Text("一覧ページです"),
      ),
    );
  }
}
