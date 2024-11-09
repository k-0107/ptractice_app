import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Todoaddpage extends StatelessWidget {
  const Todoaddpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('タスク追加'),
      ),
      body: Column(
        children: [
          Text('タスク追加'),
          ElevatedButton(
            onPressed: () {
              context.pop('/a');
            },
            child: Icon(Icons.post_add),
          )
        ],
      ),
    );
  }
}
