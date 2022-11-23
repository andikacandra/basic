import 'package:flutter/material.dart';

class Latihan15 extends StatelessWidget {
  const Latihan15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          title: Text("Text Judul"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
              ),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120,
                  width: 120,
                  color: Colors.amber,
                  child: Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(size: 100),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  color: Colors.amber,
                  child: Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120,
                  width: 120,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
