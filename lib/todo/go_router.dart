import 'package:flutter/material.dart';
import 'package:practice_app/todo/todo_addpage.dart';
import 'package:practice_app/todo/todo_listpage.dart';
import 'package:go_router/go_router.dart';

class App extends StatelessWidget {
  App({super.key});

  final router = GoRouter(
    // パス (アプリが起動したとき)
    initialLocation: '/a',
    // パスと画面の組み合わせ
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
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
