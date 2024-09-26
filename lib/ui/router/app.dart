import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/ui/router/go_router.dart';

/// アプリ本体
class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      builder: DevicePreview.appBuilder, // DevicePreview
      routerDelegate: goRouter.routerDelegate, // GoRouter
      routeInformationParser: goRouter.routeInformationParser, // GoRouter
      routeInformationProvider: goRouter.routeInformationProvider, // GoRouter
      debugShowCheckedModeBanner: false,
    );
  }
}
