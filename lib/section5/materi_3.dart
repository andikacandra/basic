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
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();

  String data = "Belum ada data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Http Post')),
      body: ListView(padding: EdgeInsets.all(10), children: [
        // Field Name
        TextField(
          autocorrect: false,
          controller: nameController,
          decoration: InputDecoration(
            label: Text('Name'),
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        // Field Job
        TextField(
          autocorrect: false,
          controller: jobController,
          decoration: InputDecoration(
            label: Text('Job'),
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () async {
            var response = await myhttp
                .post(Uri.parse("https://reqres.in/api/users"), body: {
              "name": nameController.text,
              "job": jobController.text,
            });

            var json_data = json.decode(response.body) as Map<String, dynamic>;

            if (response.statusCode == 201) {
              setState(() {
                data = "${json_data['name']} - ${json_data['job']}";

                nameController.clear();
                jobController.clear();
              });
            } else {
              setState(() {
                data = "ERROR : ${json_data}";
              });
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Save "), Icon(Icons.save_alt)],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          color: Colors.black,
        ),
        Text("$data")
      ]),
    );
  }
}
