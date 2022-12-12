import 'package:basic/section7/materi_9/page_4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 3'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.to(PageEmpat());
                  },
                  child: Text('To Page 4'))
            ],
          ),
        ));
  }
}
