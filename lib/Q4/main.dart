import 'package:flutter/material.dart';

void main() {
  const app = MaterialApp(
    home: Scaffold(
      body: Center(
        child: Q4(),
      ),
    ),
  );
  runApp(app);
}

class Q4 extends StatelessWidget {
  const Q4({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 150,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        height: 90,
                        child: Container(
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  color: Colors.blue,
                ))
              ],
            ),
          ),
          SizedBox(
            height: 60,
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
