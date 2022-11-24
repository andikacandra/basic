import 'package:flutter/material.dart';

class Latihan22 extends StatelessWidget {
  const Latihan22({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text("Text Judul"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 10,
                ),
                borderRadius: BorderRadius.circular(250 / 2),
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://picsum.photos/id/111/300/300"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
