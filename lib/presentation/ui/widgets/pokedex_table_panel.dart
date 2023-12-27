import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/ui/router/go_router.dart';
import 'package:pokedex/presentation/ui/router/page_path.dart';

class PokedexTablePanel extends ConsumerWidget {
  final String number;
  final String types;
  final String imageUrl;
  final String name;
  // final Map <String,List<String>>? result;

  const PokedexTablePanel({
    super.key,
    // required this.result,
    required this.number,
    required this.imageUrl,
    required this.types,
    required this.name,
  });

  // idを文字列に変換
  String idToString(int id) {
    String idStr = id.toString();
    final length = idStr.length;
    // idが１桁もしくは２桁の場合、表示が３桁になるように00をつける
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
    return GestureDetector(
      onTap: () {
        final router = ref.read(goRouterProvider);
        router.pushNamed(PageId.detail.routeName, extra: number);
      },
      child: Container(
        decoration: BoxDecoration(
          border:
              Border.all(color: Colors.grey[850]!, width: 2.0), // 枠線の色と太さを設定
          borderRadius: BorderRadius.circular(10.0), // 枠線に丸みをつける
          color: Colors.white, // 背景色を白に設定
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Image.network(imageUrl),
              ),
              SizedBox(height: 8.0), // 余白を追加
              Container(
                color: Colors.white, // 背景色を白に設定
                child: Flexible(
                  child: FittedBox(
                    child: Text(number),
                    fit: BoxFit.scaleDown, // 子ウィジェットが親ウィジェットに収まるようにスケーリング
                  ),
                ),
              ),
              Container(
                color: Colors.white, // 背景色を白に設定
                child: Flexible(
                  child: FittedBox(
                    child: Text(name), // ポケモンの名前を表示
                    fit: BoxFit.scaleDown, // 子ウィジェットが親ウィジェットに収まるようにスケーリング
                  ),
                ),
              ),
              Container(
                color: Colors.white, // 背景色を白に設定
                child: Flexible(
                  child: FittedBox(
                    child: Text(types),
                    fit: BoxFit.scaleDown, // 子ウィジェットが親ウィジェットに収まるようにスケーリング
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
