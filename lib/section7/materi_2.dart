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
      appBar: AppBar(
        title: Text('SnackBar GetX'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     content: Text('Halo'),
            //   ),
            // );

            Get.snackbar("Halo", "Ini adalah snackbar",
                snackPosition: SnackPosition.BOTTOM,
                overlayBlur: 1,
                margin: EdgeInsets.all(20),
                snackStyle: SnackStyle.FLOATING);
          },
          child: Text('Open SnackBar'),
        ),
      ),
    );
  }
}
