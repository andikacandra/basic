import 'package:flutter/material.dart';

class Latihan17 extends StatelessWidget {
  const Latihan17({super.key});

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
        body: GridView.builder(
          itemCount: 30,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            if (index % 2 == 1) {
              return Container(
                color: Colors.amber,
                child: Center(
                  child: Text(
                    "Hello ${index + 1}",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              );
            } else {
              return Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Hello ${index + 1}",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              );
            }
          },
        ));
  }
}
