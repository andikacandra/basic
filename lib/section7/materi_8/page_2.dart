import 'package:basic/section7/materi_8/page_1.dart';
import 'package:basic/section7/materi_8/page_1_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageDua extends StatelessWidget {
  // PageDua(this.dataPageDua);

  // Map<String, dynamic> dataPageDua;

  // PageSatu dataPageDua;

  // final pageSatuC = Get.put(PageSatuController());
  PageSatuController pageSatuC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 2'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // "Haloo ${dataPageDua['nama']} - ${dataPageDua['umur']} tahun",
              "Haloo ${pageSatuC.data2['nama']} - ${pageSatuC.data2['umur']} tahun",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
              width: double.infinity,
            ),
          ],
        ));
  }
}
