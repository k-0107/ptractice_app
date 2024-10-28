import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_app/riverpod/my_widget.dart';

void main() {
  const app = Mayapp();

  const scope = ProviderScope(child: app);
  runApp(scope);
}

class Mayapp extends StatelessWidget {
  const Mayapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}
