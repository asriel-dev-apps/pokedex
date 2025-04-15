import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

final temporaryDirectoryProvider =
    FutureProvider.autoDispose<Directory>((ref) async {
  Directory dir = await getTemporaryDirectory();
  // disposeを防ぐ
  ref.keepAlive();
  return dir;
});
// dir.deleteSync(recursive: true);
// ↑tempDirectoryを閉じる