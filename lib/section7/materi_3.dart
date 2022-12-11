import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dialog Getx')),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: "Hello",
                    content: Text('Ini Content'),
                    actions: [
                      ElevatedButton(onPressed: () {}, child: Text('Cancel')),
                    ]);
              },
              child: Text('Show Dialog'))),
    );
  }
}
