import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/ui/router/go_router.dart';
import 'package:pokedex/presentation/ui/router/page_path.dart';

class ArtWorkPage extends ConsumerWidget {
  ArtWorkPage({ Key? key}) : super(key: key);
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(child: Text('検索')),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       final router = ref.read(goRouterProvider);
        //       router.pop();
        //     },
        //     icon: const Icon(Icons.arrow_forward),
        //   ),
        // ],
      ),
      body: Container(
        color: Colors.blue,
        height: 400,
        child:  Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'ポケモンのID',
                hintText: '数字で入力してください',

              ),
            ),
            GestureDetector(
              onTap: () {
                final router = ref.read(goRouterProvider);
                router.pushNamed(PageId.detail.routeName,extra: controller.text);
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.black,
                child: const Text('IDで検索',
                style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}