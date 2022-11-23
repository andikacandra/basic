import 'package:flutter/material.dart';

class Latihan19 extends StatelessWidget {
  const Latihan19({super.key});

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
            return Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(10),
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade400,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://picsum.photos/id/${index + 776}/200/300"),
                  ),
                ),
                child: Text(
                  "Hello ${index + 1}",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        ));
  }
}
