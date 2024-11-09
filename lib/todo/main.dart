// main.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_app/todo/todo_addpage.dart';
import 'package:practice_app/todo/todo_listpage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final router = GoRouter(
    initialLocation: '/a',
    routes: [
      GoRoute(
        path: '/a',
        builder: (context, state) => const TodoListPage(),
      ),
      GoRoute(
        path: '/b',
        builder: (context, state) => const Todoaddpage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'やることリスト',
    );
  }
}
