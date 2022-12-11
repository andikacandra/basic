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
        title: const Text('Counter Apps'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Obx(() => Text(
          //       '${c.dataCounter.value}',
          //       style: const TextStyle(fontSize: 90),
          //     )),
          GetBuilder<MyController>(
            builder: (controller) {
              return Text(
                '${controller.dataCounter}',
                style: const TextStyle(fontSize: 90),
              );
            },
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    c.kurang();
                  },
                  child: const Text(
                    '-',
                    style: TextStyle(fontSize: 30),
                  )),
              const SizedBox(
                width: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    c.tambah();
                  },
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 30),
                  )),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              c.refreshTampilan();
            },
            child: Text('Refresh Tampilan'),
          )
        ],
      ),
    );
  }
}

class MyController extends GetxController {
  int dataCounter = 0;

  void kurang() {
    dataCounter--;
    print(dataCounter);
  }

  void tambah() {
    dataCounter++;
    print(dataCounter);
  }

  void refreshTampilan() {
    update();
  }
}
