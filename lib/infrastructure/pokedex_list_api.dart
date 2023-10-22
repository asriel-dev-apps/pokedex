import 'dart:convert';
import 'dart:developer';

import 'package:pokedex/infrastructure/api_constants.dart';
import 'package:pokedex/domain/types/pokedex_list.dart';
import 'package:pokedex/domain/repository/api_interface.dart';
import 'package:http/http.dart' as http;

// Pokeapiの内、一覧情報を取得する
class PokedexListApi implements ApiInterface {
  final String _baseUrl = APIs.pokeapi.baseUrl;
  String _path = '';
  String _query = '';

  @override
  Future<PokedexList> get() async {
    // 全ポケモン名を取得できるAPIを叩く
    try {
      // pathをセット
      setPath('pokemon/');

      // クエリパラメータをセット
      // ただし、BWまでしかgifアイコンがないため今回は No.649 までとした
      setQuery('limit=649');

      final url = getUrlFullPath();

      final response = await http.get(Uri.parse(url));

      // NOTE: 以下のresをModelに変換する処理はreposの方が良い？

      // Map型に変換
      // TODO: DecodeError を自作する
      final responseJson = jsonDecode(response.body);
      // PokedexList型（Model）に変換
      final pokedexList = PokedexList.fromJson(responseJson);
      print("🍎$url");
      print("🍎$pokedexList");

      return pokedexList;
    } on http.ClientException catch (e) {
      log("PokedexListApi Error: $e");
      rethrow;
    } catch (e) {
      log("PokedexListApi Unknown Error: $e");
      rethrow;
    }
  }

  @override
  String getBaseUrl() {
    return _baseUrl;
  }

  @override
  String getPath() {
    return _path;
  }

  @override
  String getQuery() {
    return _query;
  }

  @override
  String getUrlFullPath() {
    return '${getBaseUrl()}${getPath()}?${getQuery()}';
  }

  @override
  void setPath(String path) {
    _path = path;
  }

  @override
  void setQuery(String query) {
    _query = query;
  }
}
