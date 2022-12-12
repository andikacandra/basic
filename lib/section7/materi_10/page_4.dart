import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageEmpat extends StatelessWidget {
  const PageEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 4'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed("/page_lima");
                  },
                  child: Text('To Page 5'))
            ],
          ),
        ));
  }
}
