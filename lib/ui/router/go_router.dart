import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/ui/pages/detail_page/detail_page.dart';
import 'package:pokedex/ui/pages/develop_page/develop_page.dart';
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
        pageBuilder: (context, state) {
          // 一覧のリストタイルタップ時に、{"id": id, "name": name} を渡す
          final idAndName = state.extra as Map<String, dynamic>;
          return MaterialPage(
            fullscreenDialog: true,
            child: DetailPage(idAndName: idAndName),
          );
        },
      ),
      GoRoute(
        path: PageId.develop.path,
        name: PageId.develop.routeName,
        builder: (context, state) {
          return const DevelopPage();
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
