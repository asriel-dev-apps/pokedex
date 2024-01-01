import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/application/usecases/pokedex_detail_provider.dart';
import 'package:pokedex/domain/types/pokemon.dart';
import 'package:pokedex/infrastructure/device/device_size_provider.dart';

class DetailPage extends ConsumerWidget {
  final Pokemon pokemon;
  const DetailPage({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 詳細情報
    final Pokemon? detailData =
        ref.watch(pokemonDetailDataProvider(pokemon)).when(
              data: (data) => data,
              error: (err, _) => Pokemon(),
              loading: () => Pokemon(),
            );

    // Layout settings
    final size = ref.watch(deviceSizeProvider(context));
    final height = size.height;
    final width = size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text((detailData?.id ?? '---').toString()),
            const SizedBox(width: 10),
            Text(pokemon.name),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 246, 124, 86),
      body: Column(
        children: [
          detailData != null &&
                  detailData.images != null &&
                  (detailData.images!.other!["official-artwork"]
                              ["front_default"] ??
                          '')
                      .isNotEmpty
              ? Image.network(
                  detailData.images!.other!["official-artwork"]
                      ["front_default"],
                  height: height / 4,
                  width: width,
                )
              : Image.network(
                  "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${detailData!.id}.png",
                  height: height / 4,
                  width: width,
                ),
          // : Image.asset(
          //     "assets/images/pikachu_silhouette.jpg",
          //   ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Color.fromARGB(255, 214, 214, 214),
              height: height / 15,
              width: width,
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: Center(child: Text("pokemon")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Color.fromARGB(255, 214, 214, 214),
              height: height / 15,
              width: width,
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: Center(child: Text("pokemon")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Color.fromARGB(255, 214, 214, 214),
              height: height / 15,
              width: width,
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: Center(child: Text("pokemon")),
            ),
          ),
        ],
      ),
    );
  }
}
