import 'package:basic/section7/materi_10/page_0.dart';
import 'package:basic/section7/materi_10/page_1.dart';
import 'package:basic/section7/materi_10/page_2.dart';
import 'package:basic/section7/materi_10/page_3.dart';
import 'package:basic/section7/materi_10/page_4.dart';
import 'package:basic/section7/materi_10/page_5.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PageNol(),
      // routes: {
      //   "home": (p0) => PageNol(),
      //   "page_satu": (p0) => PageSatu(),
      //   "page_dua": (p0) => PageDua(),
      //   "page_tiga": (p0) => PageTiga(),
      //   "page_empat": (p0) => PageEmpat(),
      //   "page_lima": (p0) => PageLima(),
      // },

      getPages: [
        GetPage(
          name: "/home",
          page: () => PageNol(),
        ),
        GetPage(
          name: "/page_satu",
          page: () => PageSatu(),
        ),
        GetPage(
          name: "/page_dua",
          page: () => PageDua(),
        ),
        GetPage(
          name: "/page_tiga",
          page: () => PageTiga(),
        ),
        GetPage(
          name: "/page_empat",
          page: () => PageEmpat(),
        ),
        GetPage(
          name: "/page_lima",
          page: () => PageLima(),
        ),
      ],
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
