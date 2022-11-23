import 'package:flutter/material.dart';

class Latihan16 extends StatelessWidget {
  const Latihan16({super.key});

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
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 150,
                  width: 150,
                  color: Colors.amber,
                  child: Center(
                    child: Text("Box ${index + 1}"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 150,
                  width: 150,
                  color: Colors.blue,
                  child: Center(
                    child: Text("Box ${index + 1}"),
                  ),
                )
              ],
            );
          },
        ));
  }
}
