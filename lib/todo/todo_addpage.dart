import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_app/todo/todo_listpage.dart';

class Todoaddpage extends ConsumerWidget {
  Todoaddpage({super.key});
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('タスク追加'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '追加タスク入力  (絶対やれよな!!)',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final notifier = ref.read(todoListProvider.notifier);
                notifier.addTask(controller.text);
                controller.clear(); // 入力フィールドをクリア
              },
              child: Icon(Icons.add),
            ),
            ElevatedButton(
              onPressed: () {
                context.push('/a');
              },
              child: Icon(Icons.post_add),
            ),
          ],
        ),
      ),
    );
  }
}
