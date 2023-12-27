import 'package:go_router/go_router.dart';
import 'package:pokedex/presentation/ui/pages/detail_page/detail_page.dart';
import 'package:pokedex/presentation/ui/pages/list_page/list_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/ui/router/page_path.dart';
import 'package:pokedex/presentation/ui/pages/artwork_page/artwork_page.dart';
import 'package:pokedex/presentation/ui/pages/table_page/table_page.dart';

// /// GoRouter
// final goRouter = GoRouter(
//   initialLocation: "/list",
//   routes: [
//     // 一覧
//     GoRoute(
//       path: "/list",
//       name: "list",
//       builder: (context, state) {
//         return const ListPage();
//       },
//     ),
//     // 詳細
//     GoRoute(
//       path: "/detail",
//       name: "detail",
//       builder: (context, state) {
//         return DetailPage(
//           userId:state.extra as String
//           );
//       },
//     ),
//     // パラメータで値を渡す方法がいまいちわからん
//     // GoRoute(
//     //   path: "/artwork/:art",
//     //   name: "artwork",
//     //   builder: (context, state) {
//     //     final artwork:state.params['art'];
//     //     return ArtWorkPage(
//     //       artwork:artwork!
//     //       );
//     //   },
//     // ),
//   ],
// );


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
          return DetailPage(
            userId:state.extra as String
          );
        },
      ),
      GoRoute(
        path:PageId.artwork.path,
        name:PageId.artwork.routeName,
        builder: (context, state) {
          return  ArtWorkPage(
          );
        }
      ),
      GoRoute(
        path:PageId.table.path,
        name:PageId.table.routeName,
        builder: (context, state) {
          return  const tablePage(
          );
        }
      )
    ];

    return GoRouter(
      initialLocation: PageId.list.path,
      debugLogDiagnostics: false,
      routes: routes,
    );
  },
);
