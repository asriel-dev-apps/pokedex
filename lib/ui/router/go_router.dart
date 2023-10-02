import 'package:go_router/go_router.dart';
import 'package:pokedex/ui/pages/detail_page/detail_page.dart';
import 'package:pokedex/ui/pages/list_page/list_page.dart';

/// GoRouter
final goRouter = GoRouter(
  routes: [
    // 一覧
    GoRoute(
      path: "/list",
      name: "list",
      builder: (context, state) {
        return const ListPage();
      },
    ),
    // 詳細
    GoRoute(
      path: "/detail",
      name: "detail",
      builder: (context, state) {
        return const DetailPage();
      },
    ),
  ],
);
