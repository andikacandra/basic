import 'package:flutter/material.dart';

class Latihan18 extends StatelessWidget {
  const Latihan18({super.key});

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
          padding: EdgeInsets.all(20),
          itemCount: 10,
          itemBuilder: (context, index) {
            if (index % 2 == 1) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 150,
                      color: Colors.amber,
                    ),
                    Text(
                      "Hello ${index + 1}",
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 150,
                      color: Colors.blue,
                    ),
                    Text(
                      "Hello ${index + 1}",
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              );
            }
          },
        ));
  }
}
