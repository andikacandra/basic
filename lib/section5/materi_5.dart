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
  String data = "Belum ada data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http Delete'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Text("$data"),
          SizedBox(height: 40),
          ElevatedButton(
              onPressed: () async {
                var response = await myhttp
                    .get(Uri.parse("https://reqres.in/api/users/2"));

                Map<String, dynamic> my_body =
                    json.decode(response.body)['data'];
                print(my_body);
                setState(() {
                  data =
                      "Nama: ${my_body['first_name']} ${my_body['last_name']}";
                });
              },
              child: Text('Get Data')),
          ElevatedButton(
              onPressed: () async {
                var response = await myhttp
                    .delete(Uri.parse("https://reqres.in/api/users/2"));

                if (response.statusCode == 204) {
                  setState(() {
                    data = "Delete successful";
                  });
                } else {
                  print("Error");
                }
              },
              child: Text('Delete Data'))
        ],
      ),
    );
  }
}
