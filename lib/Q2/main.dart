import 'package:flutter/material.dart';

void main() {
  const app = MaterialApp(
    home: Scaffold(
      body: Center(
        child: Q2(),
      ),
    ),
  );
  runApp(app);
}

class Q2 extends StatelessWidget {
  const Q2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
