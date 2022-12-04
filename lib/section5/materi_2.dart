import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  late String dataImageUrl, fullName, email;
  int idData = 0;

  @override
  void initState() {
    dataImageUrl = "https://cdn-icons-png.flaticon.com/512/1946/1946429.png";
    fullName = 'No Name';
    email = 'No Email';
    // idData = 1;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http Get'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(150 / 2),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(dataImageUrl))),
            ),
            Text(
              fullName,
              style: TextStyle(fontSize: 30),
            ),
            Text(email),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  idData = idData + 1;
                  var response = await myhttp
                      .get(Uri.parse("https://reqres.in/api/users/$idData"));
                  var data = json.decode(response.body) as Map<String, dynamic>;

                  if (response.statusCode == 200) {
                    setState(() {
                      dataImageUrl = data['data']['avatar'].toString();
                      fullName =
                          "${data['data']['first_name']} ${data['data']['last_name']}";
                      email = "${data['data']['email']}";
                    });
                  } else {
                    setState(() {
                      dataImageUrl =
                          "https://cdn-icons-png.flaticon.com/512/1946/1946429.png";
                      fullName = 'No Name';
                      email = 'No Email';
                      idData = 0;
                    });
                  }
                  print(response.statusCode);
                  // print(response.headers);
                  // print(response.body);
                },
                child: Text('Get Data'))
          ],
        ),
      ),
    );
  }
}
