import 'package:flutter/material.dart';

void main() {
  const app = MaterialApp(
    home: Scaffold(
      body: Center(
        child: Q3(),
      ),
    ),
  );
  runApp(app);
}

class Q3 extends StatelessWidget {
  const Q3({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          SizedBox(
            width: 120,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
