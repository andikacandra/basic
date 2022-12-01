import 'package:flutter/material.dart';

// Belajar BottomSheet

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BottomSheet')),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  builder: (context) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      height: 300,
                      child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Icon(Icons.donut_small_rounded),
                            title: Text("Menu ${index + 1}"),
                          );
                        },
                      ),
                    );
                  });
            },
            child: Text('Click Me')),
      ),
    );
  }
}
