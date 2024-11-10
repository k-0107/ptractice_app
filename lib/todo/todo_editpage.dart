import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_app/todo/riverpod/todo_list_provider.dart';
import 'package:practice_app/todo/todo_listpage.dart';

class Todoeditpage extends ConsumerWidget {
  final String initialText;

  Todoeditpage({super.key, required this.initialText});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = TextEditingController(text: initialText);

    return Scaffold(
      appBar: AppBar(
        title: Text('タスク編集'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'タスク編集  (男に二言はないぞ!!)',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  final notifier = ref.read(todoListProvider.notifier);
                  notifier.addTask(controller.text);
                  controller.clear();
                  context.push('/a');
                }
              },
              child: Icon(Icons.add),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/a');
              },
              child: const Icon(Icons.post_add),
            ),
          ],
        ),
      ),
    );
  }
}
