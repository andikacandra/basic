import 'package:flutter/material.dart';

class Latihan2 extends StatelessWidget {
  const Latihan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text("Text Judul"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Center(
          child: Text(
        "Hello World",
        style: TextStyle(
          fontSize: 40,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
        ),
      )),
    );
  }
}
