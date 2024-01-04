import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final subash = StateProvider<int>((ref) => 0);

class state extends ConsumerWidget {
  const state({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(subash);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            counter.toString(),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(subash.notifier).state++;
                },
                child: const Text('Increase'),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(subash.notifier).state--;
                },
                child: const Text('Decrease'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
