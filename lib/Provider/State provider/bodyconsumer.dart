import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sun = Provider((ref) => 'Pandit');

class gantok extends StatelessWidget {
  const gantok({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          final sub = ref.read(sun);
          return Center(child: Text(sub));
        },
      ),
    );
  }
}
