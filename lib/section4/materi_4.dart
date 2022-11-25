import 'package:flutter/material.dart';

// Belajar TextField

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatefulWidget {
  const MyScaffold({
    Key? key,
  }) : super(key: key);

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  bool hidePass = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var heightStatusBar = MediaQuery.of(context).padding.top;
    return Scaffold(
      // backgroundColor: Colors.lightGreen.shade200,
      body: ListView(
        padding:
            EdgeInsets.only(left: 10, right: 10, top: heightStatusBar + 20),
        children: [
          Center(
            child: Text(
              "Login Page",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: emailController,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              labelText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              prefixIcon: Icon(Icons.email),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: passwordController,
            autocorrect: false,
            obscureText: hidePass,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              labelText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              prefixIcon: Icon(Icons.key),
              suffixIcon: IconButton(
                onPressed: () {
                  if (hidePass == true) {
                    hidePass = false;
                  } else {
                    hidePass = true;
                  }

                  setState(() {});
                },
                icon: Icon(hidePass ? Icons.visibility_off : Icons.visibility),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              print("Email : ${emailController.text}");
              print("Password : ${passwordController.text}");
            },
            child: Text("LOGIN"),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
