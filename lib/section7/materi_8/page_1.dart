import 'package:basic/section7/materi_8/page_1_controller.dart';
import 'package:basic/section7/materi_8/page_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageSatu extends StatelessWidget {
  // final pageSatuC = Get.put(PageSatuController());
  PageSatuController pageSatuC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 1'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${pageSatuC.data['nama']} - ${pageSatuC.data['umur']} tahun",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
              width: double.infinity,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        // builder: (context) => PageDua(data),
                        // builder: (context) => PageDua(PageSatu()), // injection
                        builder: (context) => PageDua(), // injection
                      ));
                },
                child: Text('Next >>>')),
          ],
        ));
  }
}
