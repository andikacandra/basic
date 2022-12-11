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
      appBar: AppBar(title: Text('Bottom Sheet Getx')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.bottomSheet(
                Container(
                  height: 300,
                  color: Colors.white,
                  child: Text('Hello'),
                ),
                barrierColor: Colors.blue,
                enterBottomSheetDuration: Duration(milliseconds: 500),
                exitBottomSheetDuration: Duration(milliseconds: 500));
          },
          child: Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}
