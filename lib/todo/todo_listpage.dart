import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
part 'todo_listpage.g.dart';

@riverpod
class TodoList extends _$TodoList {
  @override
  List<String> build() => [];

  // 新しいタスクを追加
  void addTask(String task) {
    state = [...state, task];
  }
}

class TodoListPage extends ConsumerWidget {
  const TodoListPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoList = ref.watch(todoListProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('タスク追加'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (c, i) {
                  return Card(
                    child: ListTile(
                      title: Text(todoList[i]), // 各タスクを表示
                    ),
                  );
                },
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                context.pop('/b');
              },
              child: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
