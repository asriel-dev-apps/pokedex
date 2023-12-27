import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'sliderstate.g.dart';

@riverpod
class sliderstateNotifier extends _$sliderstateNotifier {
  final int state = 2;
    @override
    int build() {
        return state;
    }

  void updateValue(int newValue) {
    state = newValue;
  }
}