import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pandit = Provider<int>((ref) => 12);

class river extends StatelessWidget {
  const river({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer(builder: (context, ref, child) {
      final hello = ref.watch(pandit);
      return Center(child: Text(hello.toString()));
    }));
  }
}
