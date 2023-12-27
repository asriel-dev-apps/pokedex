
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/ui/pages/detail_page/test.dart';
import 'package:pokedex/presentation/ui/router/go_router.dart';
// import 'package:pokedex/domain/types/pokemon_species.dart';
// import 'dart:developer';
// import 'package:collection/collection.dart';



class DetailPage extends ConsumerWidget {
  final String? userId;
  const DetailPage({super.key,required this.userId});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
  final test = Test(userId: userId);

    return Scaffold(
      appBar: AppBar(
        title: const Text('詳細ページ'),
      ),
      body: FutureBuilder(
        future: test.fetchPokeAPI(),
        builder: (context, snapshot){
          if (snapshot.hasData) {
            final listTiles = snapshot.data;
            // log(listTiles.toString());
            return listTiles!;
            // return Container(
            //   decoration: const BoxDecoration(
            //     image:DecorationImage(
            //       image: AssetImage('assets/images/pokemon_back_pattern.png'),
            //       fit: BoxFit.cover,
            //       repeat: ImageRepeat.repeat,
            //     ),
            //   ),
            // );
          } else {
            return const Center(child: CircularProgressIndicator());
          }          
        },
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
