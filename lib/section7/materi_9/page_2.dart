import 'package:basic/section7/materi_9/page_0.dart';
import 'package:basic/section7/materi_9/page_1.dart';
import 'package:basic/section7/materi_9/page_3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 2'),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('Back to Home')),
              ElevatedButton(
                  onPressed: () {
                    Get.to(PageTiga());
                  },
                  child: Text('To Page 3'))
            ],
          ),
        ));
  }
}
