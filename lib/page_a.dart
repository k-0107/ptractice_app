import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.blue,
      title: const Text('画面A'),
    );

    return Scaffold(
      appBar: appBar,
      body: ElevatedButton(
          onPressed: () => context.push('/b'), child: Text('進む')),
    );
  }
}
