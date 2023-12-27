
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:pokedex/presentation/ui/pages/detail_page/test.dart';
import 'package:pokedex/presentation/ui/router/go_router.dart';
// import 'package:pokedex/domain/types/pokemon_species.dart';
// import 'dart:developer';
// import 'package:collection/collection.dart';



class ErrorPage extends ConsumerWidget {
  final String? userId;
  const ErrorPage({super.key,required this.userId});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
  // final test = Test(userId: userId);

    return Scaffold(
      appBar: AppBar(
        title:  Text('$userId'),
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
