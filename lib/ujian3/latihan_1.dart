import 'package:flutter/material.dart';

class Latihan1 extends StatelessWidget {
  const Latihan1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text("Text Judul"),
        actions: [
          IconButton(
              onPressed: () {
                print("More");
              },
              icon: Icon(Icons.more_vert))
        ],
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Text(
          "Hello World",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
