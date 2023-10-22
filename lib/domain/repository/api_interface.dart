abstract class ApiInterface<T> {
  Future<T> get();

  String getBaseUrl();

  String getUrlFullPath();

  String getPath();
  void setPath(String path);

  String getQuery();
  void setQuery(String query);
}
