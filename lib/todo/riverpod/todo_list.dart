import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'todo_list.g.dart';

@riverpod
class TodoList extends _$TodoList {
  @override
  List<String> build() {
    return [];
  }

  // データを変更する関数
  void addTask(String task) {
    // 変更前のデータ
    final oldState = state;
    debugPrint('$oldState');
    // 変更後のデータ
    final newState = [...oldState, task];
    debugPrint('$newState');
    // 上書き
    state = newState;
  }

  // タスクを編集する関数
  void editTask(int index, String newTask) {
    // 編集前のデータ
    final oldState = state;
    // 指定したインデックスのタスクを新しい内容に変更
    final updatedState = [...oldState];
    updatedState[index] = newTask;
    // 上書き
    state = updatedState;
  }
}
