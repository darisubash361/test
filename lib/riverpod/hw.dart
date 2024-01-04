import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class hello extends ConsumerStatefulWidget {
  const hello({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _helloState();
}

class _helloState extends ConsumerState<hello> {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}