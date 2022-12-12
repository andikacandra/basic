import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginPage(),
      getPages: [
        GetPage(
          name: "/login_page",
          page: () => LoginPage(),
        )
      ],
    );
  }
}

class LoginPage extends StatelessWidget {
  final loginC = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    double paddingTop = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(
          top: 10 + paddingTop,
          right: 10,
          bottom: 10,
          left: 10,
        ),
        children: [
          TextField(
            controller: loginC.emailC,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.mail),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(() => TextField(
                autocorrect: false,
                controller: loginC.passC,
                obscureText: loginC.passObscure.value,
                decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.key),
                    suffixIcon: Icon(Icons.remove_red_eye)),
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () => loginC.passObscure.toggle(),
              child: Text('Login'))
        ],
      ),
    );
  }
}

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  RxBool passObscure = false.obs;
}
