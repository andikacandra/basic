import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(MyController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reactive Variable'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    '${c.dataInt}',
                    style: TextStyle(fontSize: 30),
                  )),
              ElevatedButton(
                  onPressed: () {
                    c.tambah();
                  },
                  child: const Text('+'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    '${c.dataString}',
                    style: TextStyle(fontSize: 30),
                  )),
              ElevatedButton(
                  onPressed: () {
                    c.updateString();
                  },
                  child: const Text('Update'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    '${c.dataDouble.toStringAsFixed(3)}',
                    style: TextStyle(fontSize: 30),
                  )),
              ElevatedButton(
                  onPressed: () {
                    c.updateDouble();
                  },
                  child: const Text('Update'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    '${c.dataBool}',
                    style: TextStyle(fontSize: 30),
                  )),
              ElevatedButton(
                  onPressed: () {
                    c.updateDouble();
                  },
                  child: const Text('Update'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    '${c.dataList}',
                    style: TextStyle(fontSize: 30),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    '${c.dataSet}',
                    style: TextStyle(fontSize: 30),
                  )),
            ],
          ),
          ListTile(
            leading: CircleAvatar(child: Text('1')),
            title: Text(c.dataMap['nama']),
            subtitle: Text(c.dataMap['umur']),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                c.reset();
              },
              child: const Text('Reset')),
        ],
      ),
    );
  }
}

class MyController extends GetxController {
  // int dataInt = 0;
  RxInt dataInt = 0.obs;
  RxString dataString = "-".obs;
  RxDouble dataDouble = 0.0.obs;
  RxBool dataBool = false.obs;
  RxList dataList = [].obs;
  RxSet<int> dataSet = {1}.obs;
  RxMap<String, dynamic> dataMap =
      {'nama': 'Andika Candra', 'umur': '28 tahun'}.obs;

  // Add some initial values to the list

  void tambah() {
    dataInt++;
    dataBool.value = true;

    if (dataInt.value % 3 == 0) {
      dataList.add(dataInt.value);
      dataSet.add(dataInt.value);
    }
    // update();
  }

  void updateString() {
    dataString.value = "Data ke-${dataInt.value}";
  }

  void updateDouble() {
    dataDouble.value = 1 / (1 + dataInt.value);
  }

  void reset() {
    dataInt.value = 0;
    dataString.value = '-';
    dataDouble.value = 0;
    dataBool.value = false;
    dataList.value = [];
    dataSet.removeWhere((element) => true);
  }
}
