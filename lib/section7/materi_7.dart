import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Worker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Obx(
            () => Text(
              "Terjadi perubahan ${c.dataPantau.value} x",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Data",
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              c.monitoring();
            },
          ),
        ]),
      ),
    );
  }
}

class MyController extends GetxController {
  RxInt dataPantau = 0.obs;

  void monitoring() {
    dataPantau++;
  }

  @override
  void onInit() {
    // ever(
    //   dataPantau,
    //   (callback) {
    //     print("Pantau selalu Perubahan");
    //   },
    // );

    // once(
    //   dataPantau,
    //   (callback) {
    //     print("Pantau sekali perubahan");
    //   },
    // );

    // debounce(
    //   dataPantau,
    //   (callback) {
    //     print("Pantau sedetik setelah tidak ada perubahan");
    //   },
    //   time: Duration(seconds: 1),
    // );

    interval(
      dataPantau,
      (callback) {
        print('Pantau setiap 2 detik selama ada perubahan');
      },
      time: Duration(seconds: 2),
    );

    super.onInit();
  }
}
