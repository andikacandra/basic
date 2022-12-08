import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  String tanggal = DateTime.now().toIso8601String();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('intl'),
      ),
      body: ListView(children: [
        ListTile(
          title: Text(tanggal),
        ),
        ListTile(
          title:
              Text(DateFormat('EEEE, d-M-y').format(DateTime.parse(tanggal))),
        ),
      ]),
    );
  }
}
