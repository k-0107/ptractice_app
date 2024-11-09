import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_app/riverpod/s1.dart';

class MyWidget extends ConsumerWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s1 = ref.watch(s1NotifierProvider);

    final button = ElevatedButton(
        onPressed: () {
          final notifire = ref.read(s1NotifierProvider.notifier);
          notifire.updateState();
        },
        child: const Text("ボタン"));

    return Column(
      children: [Text('$s1'), button],
    );
  }
}
