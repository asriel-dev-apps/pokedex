import 'package:flutter/material.dart';

class PokedexPickupPanel extends StatelessWidget {
  final String name;
  final dynamic hoge;
  final String img;
  final String infoText;
  final String type;
  final int height;
  final int weight;
  final int number;
  const PokedexPickupPanel({
    Key? key,
    required this.name,
    required this.hoge,
    required this.img,
    required this.infoText,
    required this.type,
    required this.height,
    required this.weight,
    required this.number,
  }) : super(key: key);

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

  List<String> typeMatchBgSet(String type) {
    // タイプを/で分割
    var types = type.split('/');
    // 各タイプに対応する画像のパスをリストとして返す
    print(types);
    return types.map((type) {
      switch (type) {
        case 'Fire':
          return 'assets/images/fire.png';
        case 'Water':
          return 'assets/images/water.png';
        case 'Electric':
          return 'assets/images/electric.png';
        case 'Bug':
          return 'assets/images/bug.png';
        case 'Rock':
          return 'assets/images/rock.png';
        case 'Dark':
          return 'assets/images/dark.png';
        case 'Poison':
          return 'assets/images/poison.png';
        case 'Fairy':
          return 'assets/images/fairy.png';
        case 'Ground':
          return 'assets/images/ground.png';
        case 'Normal':
          return 'assets/images/normal.png';
        case 'Flying':
          return 'assets/images/flying.png';
        case 'Ghost':
          return 'assets/images/ghost.png';
        case 'Grass':
          return 'assets/images/grass.png';
        // 他のタイプも同様に追加...
        default:
          return 'assets/images/fire.png'; // デフォルトの画像
      }
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.2, // 画面の高さの20%
      decoration: const BoxDecoration(
        color: Color.fromARGB(69, 83, 83, 83),
        image: DecorationImage(
          image: AssetImage('assets/images/pokemon_back_pattern.png'),
          fit: BoxFit.cover,
          repeat: ImageRepeat.repeat,
        ),
      ),
      child: Row(
        children: [
          // 左側：ポケモンの画像
          Column(
            children: [
              Expanded(
                child: FittedBox(
                  child: Image.network(img),
                  fit: BoxFit.contain,
                ),
              ),
              Text(name),
            ],
          ),
          // 右側：ポケモンの情報
          Expanded(
            child: SingleChildScrollView(
              child: Table(
                columnWidths: const <int, TableColumnWidth>{
                  0: IntrinsicColumnWidth(),
                  1: FlexColumnWidth(),
                },
                children: <TableRow>[
                  TableRow(
                    children: <Widget>[
                      const Text('分類'),
                      Text('ここに分類を入れたい'),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      const Text('タイプ'),
                      Row(
                        children: typeMatchBgSet(type)
                            .map((path) => Expanded(
                                child: Image.asset(path, fit: BoxFit.contain)))
                            .toList(), // 画像を表示
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Text('高さ'),
                      Text('高さ:$height'),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Text('重さ'),
                      Text('重さ:$weight'),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      const Text('特性'),
                      Text('ここに特製を入れたい'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
