import 'package:basic/section7/materi_8/page_1.dart';
import 'package:basic/section7/materi_8/page_1_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageNol extends StatelessWidget {
  // final PageSatuC = Get.put(PageSatuController());
  final PageSatuC = Get.lazyPut(() => PageSatuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageSatu(),
                    ));
              },
              child: Text('Next >>>'))),
    );
  }
}
