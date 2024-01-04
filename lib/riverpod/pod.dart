import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sujan = Provider((ref) => 'Pandit ');

class subash extends ConsumerWidget {
  const subash({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sub = ref.watch(sujan);
    return Scaffold(
      body: Center(child: Text(sub)),
    );
  }
}
