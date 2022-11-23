import 'package:flutter/material.dart';

class Latihan5 extends StatelessWidget {
  const Latihan5({super.key});

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
      body: Center(
        child: Container(
          color: Colors.blue.shade900,
          height: 150,
          width: 150,
          child: Center(
            child: Text(
              "Hello",
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
