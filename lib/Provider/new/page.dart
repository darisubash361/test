import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Pandit extends StatelessWidget {
  const Pandit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.push('/pandit1');
          },
          child: Text('Go'),
        ),
      ),
    );
  }
}
