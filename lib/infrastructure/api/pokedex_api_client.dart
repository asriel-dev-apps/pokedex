import 'dart:convert';
import 'dart:developer';

import 'package:pokedex/domain/repository/api_constants.dart';
import 'package:pokedex/domain/repository/api_client_interface.dart';
import 'package:http/http.dart' as http;

// ポケモン名 と 詳細情報取得APIのURL を取得するAPIを呼ぶ（queryで任意の数取得可能）
class PokedexSrcApiClient implements ApiClientInterface {
  final String _baseUrl = APIs.pokeapi.baseUrl;
  String _path = '';
  String _query = '';

  @override
  Future<Map<String, dynamic>> fetch() async {
    // 全ポケモン名を取得できるAPIを叩く
    // https://pokeapi.co/api/v2/pokemon?limit=649
    try {
      // pathをセット
      setPath('pokemon/');

      // クエリパラメータをセット
      // ただし、BWまでしかgifアイコンがないため今回は No.649 までとした
      setQuery('limit=1024');

      // PokeApiを呼ぶ
      final url = getUrlFullPath();
      final response = await http.get(Uri.parse(url));

      // NOTE: 以下のresをModelに変換する処理はreposの方が良い？

      // Map型に変換
      // TODO: DecodeError を自作する
      final responseJson = jsonDecode(response.body) as Map<String, dynamic>;
      print('🐱$responseJson');
      return responseJson;
    } on http.ClientException catch (e) {
      log("PokedexSrcApi Error: $e");
      rethrow;
    } catch (e) {
      log("PokedexSrcApi Unknown Error: $e");
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
