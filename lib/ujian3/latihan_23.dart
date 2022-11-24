import 'package:flutter/material.dart';

class Latihan23 extends StatelessWidget {
  const Latihan23({
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 270,
                  height: 270,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(270 / 2),
                      color: Colors.red),
                ),
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 10,
                    ),
                    borderRadius: BorderRadius.circular(250 / 2),
                    color: Colors.red,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:
                          NetworkImage("https://picsum.photos/id/111/300/300"),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Andika Candra P.",
              style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            )
          ],
        ),
      ),
    );
  }
}
