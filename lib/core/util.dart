class Util {
  // id（int）を No.OOOO のような文字列に変換
  static String idToLocaleString(int id) {
    final int n = 4 - id.toString().length;
    return "No.${"0" * n}$id";
  }
}
