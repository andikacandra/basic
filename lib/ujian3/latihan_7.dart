import 'package:flutter/material.dart';

class Latihan7 extends StatelessWidget {
  const Latihan7({super.key});

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
      body: Row(children: [
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
          width: 20,
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
      ]),
    );
  }
}
