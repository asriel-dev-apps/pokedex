import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/domain/types/pokedex_detail.dart';

class DetailPage extends StatelessWidget {
  // {"id": id, "name": "name"}を遷移時に受け取る
  final Map<String, dynamic> idAndName;

  const DetailPage({super.key, required this.idAndName});

  // 一旦ここにfetchメソッドを定義
  Future<PokedexDeatail?> fetchDetailPokeAPI(int id) async {
    PokedexDeatail? pokedexDetail;
    try {
      final response =
          await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/$id'));

      final responseJson = jsonDecode(response.body);

      pokedexDetail = PokedexDeatail.fromJson(responseJson);
    } catch (e) {
      debugPrint("🐸$e");
    }

    return pokedexDetail;
  }

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

  @override
  Widget build(BuildContext context) {
    final int id = idAndName["id"];
    final String number = idToString(id);
    final String name = idAndName["name"];
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(number),
            const SizedBox(width: 10),
            Text(name),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 246, 124, 86),
      body: FutureBuilder(
        future: fetchDetailPokeAPI(id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final pokedexDetail = snapshot.data;

            if (pokedexDetail == null) {
              return const Center(
                  child: Text(
                "詳細情報の取得に失敗しました",
                style: TextStyle(color: Colors.white),
              ));
            }

            return Column(
              children: [
                Image.network(
                  pokedexDetail.sprites!.other!["official-artwork"]
                      ["front_default"],
                  height: height / 4,
                  width: width,
                )
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
