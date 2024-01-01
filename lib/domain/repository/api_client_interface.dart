abstract class ApiClientInterface<T> {
  Future<Map<String, dynamic>> fetch();

  String getBaseUrl();

  String getUrlFullPath();

  String getPath();
  void setPath(String path);

  String getQuery();
  void setQuery(String query);
}
