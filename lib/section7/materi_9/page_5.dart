import 'package:basic/section7/materi_9/page_0.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageLima extends StatelessWidget {
  const PageLima({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 5'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed("home");
                  },
                  child: Text('Back to Home'))
            ],
          ),
        ));
  }
}
