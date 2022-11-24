import 'package:flutter/material.dart';

// Belajar StatefulWidget

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                    setState(() {});
                  },
                  child: Icon(Icons.exposure_minus_1),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    nilai++;
                    print("Nilai = ${nilai}");
                    setState(() {});
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
