import 'package:flutter/material.dart';
import 'package:pokedex/ui/router/go_router.dart';

// 一覧ページ
//
// 静的なページを作ることができる`StatelessWidget`を継承
class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold: 下地、足場
    return Scaffold(
      // 上部のBar（青い部分）
      appBar: AppBar(
        title: const Text('一覧ページ'),
        actions: [
          // 次へボタン
          IconButton(
              onPressed: () {
                goRouter.pushNamed(
                  "detail",
                );
              },
              icon: const Icon(Icons.arrow_forward)),
        ],
      ),
      // 本体：ここにWidgetを組み合わせて、フロントを構成
      body: ListView(
        children: [
          Container(
            color: Colors.amber,
            child: Image.asset(
              "assets/images/1.png",
              height: 100,
              width: 100,
            ),
          ),
          Container(
            color: Colors.cyan,
            child: Image.asset(
              "assets/images/2.png",
              height: 100,
              width: 100,
            ),
          ),
          Container(
            color: Colors.green,
            child: Image.asset(
              "assets/images/3.png",
              height: 100,
              width: 100,
            ),
          ),
          const Center(
            child: Text("フシギダネ進化ライン"),
          ),
        ],
      ),
    );
  }
}
