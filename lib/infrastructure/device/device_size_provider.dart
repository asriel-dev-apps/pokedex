import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final deviceSizeProvider =
    Provider.autoDispose.family<Size, BuildContext>((ref, context) {
  final Size size = MediaQuery.of(context).size;
  ref.keepAlive();
  return size;
});
