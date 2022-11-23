import 'dart:ffi';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${nilai}",
              style: TextStyle(fontSize: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    nilai--;
                    print("Nilai = ${nilai}");
                  },
                  child: Icon(Icons.exposure_minus_1),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    nilai++;
                    print("Nilai = ${nilai}");
                  },
                  child: Icon(Icons.exposure_plus_1),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
