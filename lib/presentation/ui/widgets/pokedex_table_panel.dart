import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/ui/router/go_router.dart';
import 'package:pokedex/presentation/ui/router/page_path.dart';
import 'package:pokedex/application/state/favoritelist.dart';

class PokedexTablePanel extends ConsumerWidget {
  final String number;
  final String types;
  final String imageUrl;
  final String name;

  const PokedexTablePanel({
    super.key,
    required this.number,
    required this.imageUrl,
    required this.types,
    required this.name,
  });

  String idToString(int id) {
    String idStr = id.toString();
    final length = idStr.length;
    if (length == 1) {
      idStr = "00$idStr";
    } else if (length == 2) {
      idStr = "0$idStr";
    }
    return "No.$idStr";
  }

  String validateName(Map<String, String>? result) {
    String name = "---";
    if (result == null || result["name"] == null) return name;
    name = result["name"]!;
    return name;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final favorite = ref.watch(favoritelistNotifierProvider);

    return GestureDetector(
      onTap: () {
        final router = ref.read(goRouterProvider);
        router.pushNamed(PageId.detail.routeName, extra: number);
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[850]!, width: 2.0),
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.network(imageUrl),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        color: Colors.white,
                        child: Flexible(
                          child: FittedBox(
                            child: Text(number),
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Flexible(
                          child: FittedBox(
                            child: Text(name),
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Flexible(
                          child: FittedBox(
                            child: Text(types),
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Consumer(
                        builder: (context, ref, child) {
                          final favorite =
                              ref.watch(favoritelistNotifierProvider);
                          final isFavorite =
                              favorite[int.parse(number)] ?? false;
                          return Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                          );
                        },
                      ),
                      onPressed: () {
                        ref
                            .read(favoritelistNotifierProvider.notifier)
                            .updatefavorite(int.parse(number));
                        final updatedFavorite =
                            ref.read(favoritelistNotifierProvider)[
                                    int.parse(number)] ??
                                false;
                        log('Button pressed. Updated favorite status: $updatedFavorite');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
