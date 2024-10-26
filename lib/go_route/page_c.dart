import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageC extends StatelessWidget {
  const PageC({super.key});

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.blue,
      title: const Text('画面C'),
    );

    return Scaffold(
      appBar: appBar,
      body:
          ElevatedButton(onPressed: () => context.go('/a'), child: Text('戻る')),
    );
  }
}
