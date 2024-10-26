import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.blue,
      title: const Text('画面B'),
    );

    return Scaffold(
        appBar: appBar,
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () => context.push('/c'),
              child: Text('進む'),
            ),
            ElevatedButton(
              onPressed: () => context.pop('/a'),
              child: Text('戻る'),
            )
          ],
        ));
  }
}
