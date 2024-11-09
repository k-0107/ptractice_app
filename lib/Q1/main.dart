import 'package:flutter/material.dart';

void main() {
  const app = MaterialApp(
    home: Scaffold(
      body: Center(
        child: Q1(),
      ),
    ),
  );

  runApp(app);
}

class Q1 extends StatelessWidget {
  const Q1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Container(
            color: Colors.red,
            width: 30,
          ),
          Expanded(
              child: Container(
            color: Colors.green,
          )),
          Container(
            color: Colors.blue,
            width: 60,
          ),
        ],
      ),
    );
  }
}
