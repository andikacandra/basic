import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

// Belajar DefaultTabController
// Belajar TabBar
// Belajar Tab

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp"),
            backgroundColor: Colors.teal.shade600,
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text("CHAT"),
                ),
                Tab(
                  child: Text("STATUS"),
                ),
                Tab(
                  child: Text("PANGGILAN"),
                ),
              ],
            ),
            actions: [
              Icon(Icons.camera_alt_outlined),
              SizedBox(width: 20),
              Icon(Icons.search),
              SizedBox(width: 20),
              Icon(Icons.more_vert),
              SizedBox(width: 10),
            ],
          ),
          body: TabBarView(children: [
            Center(
              child: ListChat(),
            ),
            Center(
              child: Text("List Status"),
            ),
            Center(
              child: Text("List Panggilan"),
            ),
          ]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.message),
            backgroundColor: Colors.teal.shade600,
          ),
        ),
      ),
    );
  }
}

class ListChat extends StatelessWidget {
  const ListChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          height: 80,
          child: Row(
            children: [
              Container(
                width: 90,
                child: Center(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50 / 2),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://picsum.photos/id/${index + 55}/100/100"),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.only(bottom: 2),
                              height: 40,
                              child: Text(
                                "Sayang ${index + 1}",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(bottom: 4),
                            width: 70,
                            height: 40,
                            child: Text(
                              "Yesterday",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(top: 2),
                              height: 40,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 105, 105, 105),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            width: 40,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent[700],
                                borderRadius: BorderRadius.circular(20 / 2),
                              ),
                              child: Center(
                                child: Text(
                                  "${Random().nextInt(20)}",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
