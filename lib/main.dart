import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/infrastructure/api/pokedex_api_client.dart';
import 'package:pokedex/infrastructure/repository/mock_pokedex_repository.dart';
import 'package:pokedex/infrastructure/repository/pokedex_repository.dart';

import 'package:pokedex/ui/router/app.dart';

void main() {
  const app = App();
  final scope = ProviderScope(
    overrides: [
      pokedexRepositoryProvider.overrideWithValue(
        // ReleaseModeでtrue
        // https://star-zero.medium.com/flutter%E3%81%A7debug%E5%AE%9F%E8%A1%8C%E3%82%92%E5%88%A4%E5%AE%9A%E3%81%99%E3%82%8B-769d92fa682c
        !const bool.fromEnvironment('dart.vm.product')
            ? PokedexRepository(
                pokedexSrcApiClient: PokedexSrcApiClient(),
              )
            : MockPokedexRepository(),
      ),
    ],
    child: app,
  );

  // Device Preview
  Widget window = scope;
  if (kIsWeb) {
    window = DevicePreview(
      builder: (context) => scope,
    );
  }

  runApp(window);
}
