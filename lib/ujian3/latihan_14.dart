import 'package:flutter/material.dart';

class Latihan14 extends StatelessWidget {
  const Latihan14({super.key});

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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
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
            SizedBox(
              width: 20,
            ),
            Column(
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
