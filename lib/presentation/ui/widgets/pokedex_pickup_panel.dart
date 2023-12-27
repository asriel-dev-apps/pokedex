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

  String typeMatchBgSet(String type) {
    return type;
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
                      Text(type),
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
