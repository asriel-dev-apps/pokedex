import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/ui/pages/detail_page/detail_page.dart';
import 'package:pokedex/ui/pages/list_page/list_page.dart';
import 'package:pokedex/ui/router/page_path.dart';

/// Provide GoRouter
final goRouterProvider = Provider(
  (ref) {
    final routes = [
      GoRoute(
        path: PageId.list.path,
        name: PageId.list.routeName,
        builder: (context, state) {
          return const ListPage();
        },
      ),
      GoRoute(
        path: PageId.detail.path,
        name: PageId.detail.routeName,
        builder: (context, state) {
          return const DetailPage();
        },
      ),
    ];

    return GoRouter(
      initialLocation: PageId.list.path,
      debugLogDiagnostics: false,
      routes: routes,
    );
  },
);
