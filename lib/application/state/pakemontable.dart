import 'dart:convert';
import 'dart:developer';
import 'package:pokedex/domain/types/pokemon_list.dart';

import 'package:flutter/material.dart';
import 'package:pokedex/domain/types/pokemon_info.dart';
// import 'package:pokedex/presentation/ui/widgets/pokedex_info_panel.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/presentation/ui/widgets/pokedex_table_panel.dart';
part 'pakemontable.g.dart';

@riverpod
class pakemontableNotifier extends _$pakemontableNotifier {
  final String userId = '1';
  Map<String, List<String>> pokemonMapList = {};
  List<Widget> pokemonTableWiddgetList = [];
  int pokemonCount = 20;
  int prevCount = 0;
  @override
  Future<List<Widget>> build() async {
    pokemonMapList.addAll(await fetchPokeTable(prevCount, pokemonCount));
    pokemonTableWiddgetList = pokeTablePanel(pokemonMapList);

    return pokemonTableWiddgetList;
  }

  // Gridビュー
  // ウィジェット作成して、ディティールとリストの真似をして実装を試みる
  // Gridビューで並べるための四角のウィジェットをリスト分作成
  List<Widget> pokeTablePanel(Map<String, List<String>> pokemonList) {
    List<Widget> tableTiles = [];
    tableTiles = pokemonList.entries.map(
      (entry) {
        log(entry.toString());
        return PokedexTablePanel(
          key: Key(entry.key.toString()), // ここでキーを設定します
          number: entry.key.toString(),
          name: entry.value[0].toString(),
          imageUrl: entry.value[1].toString(),
          types: entry.value[3].toString(),
        );
      },
    ).toList();
    return tableTiles;
  }

  // データを変更する関数
  void updateState(int count) async {
    // データを上書き
    state = const AsyncValue.loading();
    // 3秒まつ→apiが取得できるまで待つ
    // const sec3 = Duration(seconds: 3);
    // 追加分の変数を取得する
    // そして、格納していく
    // ここは追加分のカウントでいいな
    prevCount = pokemonCount;
    pokemonCount += count;
    pokemonMapList.addAll(await fetchPokeTable(prevCount, pokemonCount));
    pokemonTableWiddgetList = pokeTablePanel(pokemonMapList);
    state = AsyncValue.data(pokemonTableWiddgetList);
  }

  void sortPokemonTableWidgetList(String sortOrder) {
    if (sortOrder == '昇順') {
      log(sortOrder);
      log(pokemonTableWiddgetList.toString());
      pokemonTableWiddgetList.sort((w1, w2) {
        final key1 = getKeyFromWidget(w1); // Widgetからキーを取得する関数
        debugPrint(key1);
        final key2 = getKeyFromWidget(w2); // Widgetからキーを取得する関数
        return int.parse(key1).compareTo(int.parse(key2));
      });
    } else if (sortOrder == '降順') {
      log(sortOrder);
      log(pokemonTableWiddgetList.toString());
      pokemonTableWiddgetList.sort((w1, w2) {
        final key1 = getKeyFromWidget(w1); // Widgetからキーを取得する関数
        final key2 = getKeyFromWidget(w2); // Widgetからキーを取得する関数
        log('🍎$key2');
        log(key1);
        return int.parse(key2).compareTo(int.parse(key1));
      });
      log(pokemonTableWiddgetList.toString());
    }
    state = AsyncValue.data(pokemonTableWiddgetList); // 状態を更新します
    log(pokemonTableWiddgetList.toString());
  }

  String getKeyFromWidget(Widget widget) {
    // ここでウィジェットからキーを取得するロジックを実装します。
    // この例では、ウィジェットがKeyを持つと仮定しています。
    log(widget.key.toString());
    String keyString = (widget.key as Key).toString();
    log('🌟$keyString');
    final RegExp regExp = RegExp(r'\d+');
    final String keyNumber = regExp.stringMatch(keyString) ?? '';
    log('🍏$keyNumber');
    return keyNumber;
  }

  // apiを叩くメソッド定義
  // api叩いて、PokemonListに格納するようにする
  Future<Map<String, List<String>>> fetchPokeTable(int prev, int count) async {
    Map<String, List<String>> pokemonListData = {
      'test': ['aaa', 'aaaaa'],
    };
    try {
      debugPrint(count.toString());
      final response = await http
          .get(Uri.parse('https://pokeapi.co/api/v2/pokemon/?limit=$count'));

      final responseJson = jsonDecode(response.body);
      final pokemonDataList = PokemonList.fromJson(responseJson);

      final results = pokemonDataList.results;

      final resultsMap = results!.asMap();
      final List<String> urlList = [];

      int start = prev;
      int end = count;

      resultsMap.entries.skip(start).take(end - start).forEach((entry) {
        urlList.add(entry.value!['url'].toString());
      });
      final Map<String, List<String>> pokemonMapDataList = {};
      await Future.forEach(urlList, (element) async {
        final response = await http.get(Uri.parse(element.toString()));
        Map<String, dynamic> map = jsonDecode(response.body) ?? '';
        final pokemonDataInfo = PokemonInfo.fromJson(map);
        final responeTypes = pokemonDataInfo.types;
        final typeLength = pokemonDataInfo.types!.length;

        var types = '';
        for (int i = 0; i < typeLength; i++) {
          String responseType = responeTypes![i]['type']['url'].toString();
          final responeUrl = await http.get(Uri.parse(responseType));
          final responeTypejson = jsonDecode(responeUrl.body);
          var type = responeTypejson['names']
              .firstWhere(
                  (element) => element['language']['name'] == 'en')['name']
              .toString();
          if (i > 0) {
            types += '/';
          }
          types += type;
        }
        // log(types.toString());
        final speciesUrl = pokemonDataInfo.species;

        final responsespeciesUrl =
            await http.get(Uri.parse(speciesUrl!['url']));

        final responeJsonSpecies = jsonDecode(responsespeciesUrl.body);
        Map<String, List<String>> pokemonMapDataListToUrl = {
          map['id'].toString(): [
            responeJsonSpecies['names']
                .firstWhere(
                    (element) => element['language']['name'] == 'en')['name']
                .toString(),
            pokemonDataInfo.sprites!['other']['official-artwork']
                    ['front_default']
                .toString(),
            responeJsonSpecies['flavor_text_entries']
                .firstWhere((element) => element['language']['name'] == 'en')[
                    'flavor_text']
                .toString(),
            types.toString(),
            pokemonDataInfo.height!.toString(),
            pokemonDataInfo.weight!.toString(),
          ],
        };
        pokemonMapDataList.addAll(pokemonMapDataListToUrl);
      });
      pokemonListData = pokemonMapDataList;
    } catch (e) {
      debugPrint("🐸$e");
    }

    return pokemonListData;
  }
}
