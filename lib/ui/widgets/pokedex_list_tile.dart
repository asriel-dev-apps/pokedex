import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/types/pokemon.dart';
import 'package:pokedex/ui/router/go_router.dart';
import 'package:pokedex/ui/router/page_path.dart';

class PokedexListTile extends ConsumerWidget {
  final Pokemon pokemon;

  const PokedexListTile({super.key, required this.pokemon});

  // id を No.OOOO のような文字列に変換
  String idToLocaleString(int id) {
    final int n = 4 - id.toString().length;
    return "No.${"0" * n}$id";
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ListTileの高さ
    const height = 60.0;

    return GestureDetector(
      onTap: () {
        final router = ref.read(goRouterProvider);
        router.pushNamed(PageId.detail.routeName, extra: pokemon);
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
                idToLocaleString(pokemon.id),
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
