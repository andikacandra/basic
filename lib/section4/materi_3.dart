import 'package:flutter/material.dart';

// Belajar SnackBar

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Halo"),
                action: SnackBarAction(label: "Close", onPressed: () {}),
                margin: EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            );
          },
          child: Text("Show SnackBar"),
        ),
      ),
    );
  }
}
