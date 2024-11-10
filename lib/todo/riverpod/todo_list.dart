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
    // 変更後のデータ
    final newState = [...oldState, task];
    // 上書き
    state = newState;
  }
}
