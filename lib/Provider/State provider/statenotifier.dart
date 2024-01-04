import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newproject/Provider/State%20provider/statenotifierprovider.dart';

class noti extends ConsumerWidget {
  const noti({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sin = ref.watch(testprovider);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            sin.toString(),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(testprovider.notifier).increment();
                },
                child: const Text('Increase'),
              ),
              const SizedBox(
                width: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(testprovider.notifier).decrement();
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
