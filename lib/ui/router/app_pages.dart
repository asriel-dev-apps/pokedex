/// 画面ID
enum AppPages {
  pokedex,
  develop,
}

/// 設計上の画面パス
extension PagePath on AppPages {
  String get path {
    switch (this) {
      case AppPages.pokedex:
        return '/pokedex';
      case AppPages.develop:
        return '/develop';
    }
  }
}

/// 設計上の画面名
extension PageName on AppPages {
  String get routeName {
    switch (this) {
      case AppPages.pokedex:
        return 'pokedex';
      case AppPages.develop:
        return 'develop';
    }
  }
}
