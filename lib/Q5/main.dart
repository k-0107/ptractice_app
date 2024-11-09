import 'package:flutter/material.dart';

void main() {
  const app = MaterialApp(
      home: Scaffold(
    body: Center(
      child: Q5(),
    ),
  ));
  runApp(app);
}

class Q5 extends StatelessWidget {
  const Q5({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Column(
        children: [
          SizedBox(
            height: 90,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 120,
                              child: Container(
                                color: Colors.blue,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 90,
                  child: Container(
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
