import 'package:flutter_riverpod/flutter_riverpod.dart';

class Sub extends StateNotifier<int> {
  Sub() : super(0);
 
  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}

final testprovider = StateNotifierProvider<Sub, int>((ref) {
  return Sub();
});
