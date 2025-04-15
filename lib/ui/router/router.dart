import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/ui/pages/detail_page/detail_page.dart';
import 'package:pokedex/ui/pages/develop_page/develop_page.dart';
import 'package:pokedex/ui/pages/list_page/list_page.dart';
import 'package:pokedex/ui/router/app_pages.dart';

final goRouterProvider = Provider(
  (ref) {
    final routes = [
      GoRoute(
        path: AppPages.pokedex.path,
        name: AppPages.pokedex.routeName,
        builder: (context, state) {
          return const ListPage();
        },
      ),
      GoRoute(
        path: '${AppPages.pokedex.path}/:id',
        builder: (context, state) {
          final int id = int.parse(state.pathParameters['id']!);
          print("🐱🐱${state.pathParameters}");
          print("🐱🐱${id}");
          return DetailPage(id: id);
        },
      ),
      // GoRoute(
      //   path: AppPages.detail.path,
      //   name: AppPages.detail.routeName,
      //   pageBuilder: (context, state) {
      //     final pokemon = state.extra as PokedexEntry;
      //     return MaterialPage(
      //       fullscreenDialog: true,
      //       child: DetailPage(
      //         pokemon: pokemon,
      //       ),
      //     );
      //   },
      // ),
      GoRoute(
        path: AppPages.develop.path,
        name: AppPages.develop.routeName,
        builder: (context, state) {
          return const DevelopPage();
        },
      ),
    ];

    return GoRouter(
      // TODO: listに直す
      initialLocation: AppPages.develop.path,
      debugLogDiagnostics: false,
      routes: routes,
    );
  },
);
