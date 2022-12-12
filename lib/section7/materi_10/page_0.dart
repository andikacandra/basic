import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageNol extends StatelessWidget {
  const PageNol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          ElevatedButton(
            onPressed: () {
              Get.toNamed("/page_satu");
            },
            child: Text('Page 1'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed("/page_dua");
            },
            child: Text('Page 2'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.offNamed("/page_tiga");
            },
            child: Text('Page 3'),
          ),
        ],
      ),
    );
  }
}
