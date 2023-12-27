import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'sortorder.g.dart';

@riverpod
class sortorderNotifier extends _$sortorderNotifier {
  String state = '昇順';
  @override
  String build() {
    return state;
  }

  void updateValue(String newOrder) {
    state = newOrder;
  }
}
