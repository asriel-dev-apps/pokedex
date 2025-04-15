import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/ui/pages/develop_page/develop_page_2.dart';

class DevelopPage extends StatelessWidget {
  const DevelopPage({super.key});

  List<String> generatePokemonImageUrls({int count = 100, int max = 1000}) {
    final baseUrl =
        // 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/';
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/";
    final random = Random();
    final Set<int> numbers = {};

    // 重複なしでcount個のランダムな数字を生成（0〜max-1）
    while (numbers.length < count) {
      numbers.add(random.nextInt(max));
    }

    return numbers.map((number) => '$baseUrl$number.png').toList();
  }

  @override
  Widget build(BuildContext context) {
    final imageUrls = generatePokemonImageUrls();
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            final imageUrl = imageUrls[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DevelopPage2(imageUrl: imageUrl),
                  ),
                );
              },
              child: Hero(
                tag: imageUrl,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blueGrey, // 枠線の色
                          width: 0.5, // 枠線の太さ
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: CachedNetworkImage(
                        imageUrl: imageUrl,
                        placeholder: (context, url) => const Center(
                            child: CircularProgressIndicator(strokeWidth: 2)),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 3,
            crossAxisSpacing: 3,
            childAspectRatio: 1.0,
          ),
        ),
      ),
    );
  }
}
