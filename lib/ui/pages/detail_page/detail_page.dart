import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/ui/router/go_router.dart';

class DetailPage extends ConsumerWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('詳細ページ'),
      ),
      body: const Center(
        child: Text("詳細ページです"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final router = ref.read(goRouterProvider);
          router.pop();
        },
      ),
    );
  }
}
