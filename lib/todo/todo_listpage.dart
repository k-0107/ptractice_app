import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('タスク追加'),
        ),
        body: Column(
          children: [
            Text("タスク一覧画面"),
            ElevatedButton(
              onPressed: () {
                context.push('/b');
              },
              child: const Icon(Icons.post_add),
            )
          ],
        ));
  }
}
