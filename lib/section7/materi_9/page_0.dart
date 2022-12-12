import 'package:basic/section7/materi_9/page_1.dart';
import 'package:basic/section7/materi_9/page_2.dart';
import 'package:basic/section7/materi_9/page_3.dart';
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
              Get.to(PageSatu());
            },
            child: Text('Page 1'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(PageDua());
            },
            child: Text('Page 2'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.off(PageTiga());
            },
            child: Text('Page 3'),
          ),
        ],
      ),
    );
  }
}
