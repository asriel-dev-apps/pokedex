import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:pokedex/ui/router/go_router.dart';
// import 'package:pokedex/ui/router/page_path.dart';
// import 'dart:developer';

class PokemdexInfoPanel extends StatelessWidget {
  final String name;
  final dynamic hoge;
  final String img;
  final String infoText;
  final String type;
  final int height;
  final int weight;
  final int number;
  const PokemdexInfoPanel({ Key? key ,
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
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(69, 83, 83, 83),
        image:DecorationImage(
          image: AssetImage('assets/images/pokemon_back_pattern.png'),
          fit: BoxFit.cover,
          repeat: ImageRepeat.repeat,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: Container(
                color: Colors.transparent,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // ポケモンの画像
                      SizedBox(
                        height: 500,
                        width: 500,
                        child: Image.network(img),
                      ),
                      // ポケモンの名前
                      Container(
                         color: Colors.white,
                         margin: const EdgeInsets.all(20),
                        child: SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(idToString(number)),
                              Text(name),
                              Text(typeMatchBgSet(type))
                            ],
                          ),
                        ),
                      ),
                      // ポケモンの情報
                      Container(
                        color: Colors.white,
                        child: Container(
                          margin: const EdgeInsets.all(40),
                          decoration: BoxDecoration(
                            border: Border.all(width: 10,color: Colors.cyan),
                          ),
                          child: SizedBox(
                            height: 200,
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('分類'),
                                    Text('ここに分類を入れたい'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text('タイプ'),
                                    Text(type),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('高さ:$height'),
                                    Text('重さ:$weight'),
                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('特性'),
                                    Text('ここに特製を入れたい'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      // ポケモンの説明
                      Container(
                        color: Colors.white,
                        child: Container(
                          margin: const EdgeInsets.all(50),
                          decoration: BoxDecoration(
                            border: Border.all(width: 20,color: Colors.grey),
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            height: 100,
                            child: Center(child: Text(infoText)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    // return Column(
    //   children: [
    //     Container(
    //       color: Colors.blue,
    //       child: Text(name),
    //     ),
    //     Image.network(
    //       img,
    //     ),
    //     Text(infoText),
    //     Text(type),
    //     Text(height.toString()),
    //     Text(weight.toString()),
    //   ],
    // );
  }
}