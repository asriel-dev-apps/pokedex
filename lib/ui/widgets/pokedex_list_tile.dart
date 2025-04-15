import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/util.dart';
import 'package:pokedex/domain/models/pokedex_entry.dart';
import 'package:pokedex/ui/router/router.dart';
import 'package:pokedex/ui/router/app_pages.dart';

class PokedexListTile extends ConsumerWidget {
  final PokedexEntry pokemon;

  const PokedexListTile({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ListTileの高さ
    const height = 60.0;

    return GestureDetector(
      onTap: () {
        final router = ref.read(goRouterProvider);
        print('🐱🐱${pokemon.id}');
        router.push('${AppPages.pokedex.path}/${pokemon.id}');
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Image.asset(
              'assets/images/sword_shield_pokedex_background.png',
              height: height,
            ),
          ),
          SizedBox(
            height: height,
            child: Align(
              alignment: const Alignment(-0.9, 0.0),
              // 画像のURLに受け取ったidを挿入して、Image.network()を実行
              child: Image.network(
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokemon.id}.png",
                // "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/${pokemon.id}.gif",
              ),
            ),
          ),
          SizedBox(
            height: height,
            child: Align(
              alignment: const Alignment(-0.4, 0.0),
              child: Text(
                Util.idToLocaleString(pokemon.id),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height,
            child: Align(
              alignment: const Alignment(0.5, 0.0),
              child: Text(
                pokemon.name,
                style: TextStyle(
                  color: Colors.white,
                  // TODO: レスポンシブにしたい
                  // 背景から文字がはみ出てしまうため、15文字以上の場合フォントを小さくする
                  fontSize: pokemon.name.length >= 15 ? 11 : 14,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height,
            child: Align(
              alignment: const Alignment(0.93, 0.0),
              child: Image.asset(
                "assets/images/pokeball.png",
                height: 40,
                width: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
