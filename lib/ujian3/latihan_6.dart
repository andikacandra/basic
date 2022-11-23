import 'package:flutter/material.dart';

class Latihan6 extends StatelessWidget {
  const Latihan6({super.key});

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
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.blue.shade900,
            borderRadius: BorderRadius.circular(150),
          ),
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
