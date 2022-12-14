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
  List<Map<String, dynamic>> allUser = [];

  Future getAllUser() async {
    // await Future.delayed(Duration(seconds: 3));
    try {
      var response = await http.get(Uri.parse("https://reqres.in/api/users"));
      if (response.statusCode == 200) {
        List data =
            (json.decode(response.body) as Map<String, dynamic>)['data'];
        data.forEach((element) {
          allUser.add(element);
        });
      } else {
        print("Error : ${response.body}");
      }
    } catch (e) {
      print("Error : ${e}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Future Builder')),
      body: FutureBuilder(
          future: getAllUser(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: Text("Loading..."),
              );
            } else {
              return ListView.builder(
                itemCount: allUser.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(allUser[index]['avatar']),
                    ),
                    title: Text(
                        "${allUser[index]['first_name']} ${allUser[index]['last_name']}"),
                    subtitle: Text("${allUser[index]['email']}"),
                  );
                },
              );
            }
          }),
    );
  }
}
