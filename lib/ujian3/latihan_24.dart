import 'package:flutter/material.dart';

class Latihan24 extends StatelessWidget {
  const Latihan24({
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
        body: Column(
          children: [
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) {
                  if (index % 2 == 1) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      width: 80,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Box ${index + 1}",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  } else {
                    return Container(
                      margin: EdgeInsets.all(10),
                      width: 80,
                      color: Colors.amber,
                      child: Center(
                        child: Text(
                          "Box ${index + 1}",
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  if (index % 2 == 1) {
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            color: Colors.amber,
                          ),
                          Text(
                            "Menu ${index + 1}",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            color: Colors.blue,
                          ),
                          Text(
                            "Menu ${index + 1}",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ));
  }
}
