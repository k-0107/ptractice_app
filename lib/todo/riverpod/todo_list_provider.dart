import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// タスクを管理するStateNotifier
class TodoListNotifier extends StateNotifier<List<String>> {
  TodoListNotifier() : super(["テストタスク 1", "テストタスク 2", "テストタスク 3"]);

  // 新しいタスクを追加
  void addTask(String task) {
    state = [...state, task];
  }
}

// TodoListProviderの作成
final todoListProvider =
    StateNotifierProvider<TodoListNotifier, List<String>>((ref) {
  return TodoListNotifier();
});
