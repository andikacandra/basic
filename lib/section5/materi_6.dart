import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Future Builder')),
      // body: Center(
      //   child: ElevatedButton(
      //       onPressed: () async {
      //         var response =
      //             await http.get(Uri.parse("https://reqres.in/api/users"));
      //         print(response.statusCode);
      //         if (response.statusCode == 200) {
      //           List data = (json.decode(response.body)
      //               as Map<String, dynamic>)['data'];
      //           data.forEach((element) {
      //             print(element['email']);
      //           });
      //           //
      //         } else {
      //           print("Error : ${response.body}");
      //         }
      //       },
      //       child: Text('click')),
      // )

      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(),
            title: Text("Data ${index + 1}"),
            subtitle: Text('info@gmail.com'),
          );
        },
      ),
    );
  }
}
