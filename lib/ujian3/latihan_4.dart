import 'dart:math';

import 'package:flutter/material.dart';

class Latihan4 extends StatelessWidget {
  const Latihan4({super.key});

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
          child: Transform.rotate(
            angle: pi / (180 / 90),
            child: FlutterLogo(
              size: 250,
            ),
          ),
        ),
      ),
    );
  }
}
