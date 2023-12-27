// import 'd/art:ffi';

import 'package:flutter/material.dart';
import 'package:pokedex/application/state/pakemontable.dart';
import 'package:pokedex/application/state/sliderstate.dart';
import 'package:pokedex/application/state/sortorder.dart';
import 'package:pokedex/application/state/pokemonpickup.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/ui/router/go_router.dart';
import 'package:pokedex/presentation/ui/router/page_path.dart';
import 'package:pokedex/presentation/ui/widgets/error.dart';

class tablePage extends ConsumerWidget {
  // int pokecount;
  const tablePage({
    super.key,
    // required this.pokecount,
  });

  // s3Textがウィジェットかどうか判別する
  List<Widget> checkS3(Object s3) {
    List<Widget> empty = [];
    if (s3.runtimeType == List<Widget>) {
      return s3 as List<Widget>;
    } else {
      return empty;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // S3 watch
    final s3 = ref.watch(pakemontableNotifierProvider);
    // Slider value watch
    final sliderValue = ref.watch(sliderstateNotifierProvider);
    final sortOrder = ref.watch(sortorderNotifierProvider);
    final pokemonPickup = ref.watch(pokemonpickupNotifierProvider);

    // S3 ボタン
    final s3Button = ElevatedButton.icon(
      onPressed: () {
        // S3 ノティファイアを呼ぶ
        final notifier = ref.read(pakemontableNotifierProvider.notifier);
        // S3 データを変更
        notifier.updateState(10);
      },
      icon: Icon(Icons.add), // 追加を彷彿とさせるアイコン
      label: const Text('変更'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange, // ボタンの背景色
        foregroundColor: Colors.white, // ボタンの文字色
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // ボタンの角を丸くする
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(child: Text('Pokedex')),
        actions: [
          DropdownButton<String>(
            value: sortOrder,
            icon: const Icon(Icons.sort),
            onChanged: (String? newValue) {
              if (newValue != null) {
                ref
                    .read(pakemontableNotifierProvider.notifier)
                    .sortPokemonTableWidgetList(newValue);
                ref
                    .read(sortorderNotifierProvider.notifier)
                    .updateValue(newValue);
              }
            },
            items: <String>['昇順', '降順']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          IconButton(
            onPressed: () {
              final router = ref.read(goRouterProvider);
              router.pushNamed(PageId.artwork.routeName);
            },
            icon: const Icon(Icons.arrow_forward),
          ),
          IconButton(
            onPressed: () {
              final router = ref.read(goRouterProvider);
              router.pushNamed(PageId.table.routeName);
            },
            icon: const Icon(Icons.arrow_left),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.white, Colors.black], // 動物っぽい色のグラデーション
          ),
        ),
        child: Column(
          children: [
            Slider(
              min: 1,
              max: 5,
              divisions: 4,
              value: sliderValue.toDouble(),
              onChanged: (double newValue) {
                ref
                    .read(sliderstateNotifierProvider.notifier)
                    .updateValue(newValue.toInt());
              },
            ),
            //スライダーの下から、スクロールできるようにcolumnでまとめたいです

            Expanded(
              child: ListView(
                children: [
                  pokemonPickup.when(
                    data: (Widget data) => data, // データが取得できたときの処理
                    loading: () => CircularProgressIndicator(), // データ取得中の処理
                    error: (error, stackTrace) =>
                        Text('エラーが発生しました'), // エラー発生時の処理
                  ),
                  s3.when(
                    loading: () => const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircularProgressIndicator(),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text('ポケモンのデータを取得しています。'),
                          ),
                        ],
                      ),
                    ),
                    error: (e, s) => ErrorPage(userId: 'エラー $e'),
                    data: (d) => GridView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: sliderValue),
                      children: [
                        for (var i = 0; i < d.length + 1; i++)
                          i == d.length ? s3Button : d[i],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
