import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/ui/router/go_router.dart';
import 'package:pokedex/ui/router/page_path.dart';

class PokedexListTile extends ConsumerWidget {
  // ポケモンのid（図鑑No.）
  final int id;
  // PokedexListのvalue -> {"results": {"name": "hoge1", "url": "https　://fuga1"}, ...}
  // {"name": "hoge1", "url": "https　://fuga1"} を resultと置いた
  final Map<String, String>? result;

  const PokedexListTile({
    super.key,
    required this.id,
    required this.result,
  });

  // idを文字列に変換
  String idToString(int id) {
    String idStr = id.toString();
    final length = idStr.length;
    // idが１桁もしくは２桁の場合、表示が３桁になるように0をつける
    if (length == 1) {
      idStr = "00$idStr";
    } else if (length == 2) {
      idStr = "0$idStr";
    }
    // No.oooのような文字列を返す
    return "No.$idStr";
  }

  // result["name"]へバリデーション
  String validateName(Map<String, String>? result) {
    String name = "---";
    // result自体 or result["name"]がnullの場合"---"を返す
    if (result == null || result["name"] == null) return name;
    // ポケモン名をnameへ格納
    name = result["name"]!;
    return name;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ListTilwの高さ
    const height = 60.0;
    // 図鑑No.
    final number = idToString(id);
    // ポケモン名
    final name = validateName(result);
    return GestureDetector(
      onTap: () {
        final router = ref.read(goRouterProvider);
        router.pushNamed(PageId.detail.routeName,
            extra: {"id": id, "name": name});
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
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/$id.gif",
              ),
            ),
          ),
          SizedBox(
            height: height,
            child: Align(
              alignment: const Alignment(-0.4, 0.0),
              child: Text(
                number,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height,
            child: Align(
              alignment: const Alignment(0.5, 0.0),
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  // TODO: レスポンシブにしたい
                  // 背景から文字がはみ出てしまうため、15文字以上の場合フォントを小さくする
                  fontSize: name.length >= 15 ? 11 : 14,
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
