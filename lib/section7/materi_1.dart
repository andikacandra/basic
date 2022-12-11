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
  final c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    print('RENDER');
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() {
            // obx akan membuat hanya element ini yang akan di render ulang
            return Text(
              "${c.data.value}",
              style: TextStyle(fontSize: 50),
            );
          }),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  c.decrement();
                },
                child: Text('-'),
              ),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  c.increment();
                },
                child: Text('+'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Controller extends GetxController {
  var data = 0.obs; // obs adalah state yang akan selalu di pantau perubahannya
  decrement() => data--;
  increment() => data++;
}
