import 'package:basic/section7/bindings/counter_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      getPages: [
        GetPage(
          name: "/counter_page",
          page: () => CounterPage(),
          // bindings: [
          //   BindingsBuilder.put(() => CounterController()), // diload dengan cara membuat binding builder
          // ],
          binding: CounterBinding(), // diload dengan cara membuat binding class
        ),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Binding Builder')),
      body: Center(
        child: ElevatedButton(
            onPressed: () => Get.toNamed("/counter_page"),
            child: Text('To Counter Page')),
      ),
    );
  }
}

class CounterPage extends StatelessWidget {
  CounterController counterC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter Page')),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Obx(() => Text(
              '${counterC.dataCounter.value}',
              style: TextStyle(fontSize: 30),
            )),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  counterC.counterDown();
                },
                child: Text('-')),
            SizedBox(
              width: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  counterC.counterUp();
                },
                child: Text('+'))
          ],
        )
      ]),
    );
  }
}

class CounterController extends GetxController {
  RxInt dataCounter = 0.obs;

  void counterDown() => dataCounter--;
  void counterUp() => dataCounter++;
}
