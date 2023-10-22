enum APIs {
  pokeapi,
  dummy,
}

extension BaseUrls on APIs {
  String get baseUrl {
    switch (this) {
      case APIs.pokeapi:
        return 'https://pokeapi.co/api/v2/';
      case APIs.dummy:
        return 'https://jsonplaceholder.typicode.com/';
    }
  }
}
