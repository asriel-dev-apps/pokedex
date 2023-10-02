import 'package:flutter/material.dart';
import 'package:pokedex/ui/router/go_router.dart';

// 詳細ページ
//
// 静的なページを作ることができる`StatelessWidget`を継承
class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          goRouter.pop();
        },
      ),
    );
  }
}
