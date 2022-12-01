import 'package:flutter/material.dart';

// Belajar DropDown

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List items = [
    {"title": "Data 1", "value": 1},
    {"title": "Data 2", "value": 2},
    {"title": "Data 3", "value": 3},
    {"title": "Data 5", "value": 5},
    {"title": "Data 6", "value": 6},
  ];

  late int dataAwal;

  @override
  void initState() {
    // TODO: implement initState
    dataAwal = items[0]['value'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DropDown'),
        ),
        body: Center(
          child: DropdownButton(
            value: dataAwal,
            items: items
                .map(
                  (e) => DropdownMenuItem(
                    child: Text(e['title']),
                    value: e['value'],
                  ),
                )
                .toList(),
            onChanged: (value) {
              print(value);
              setState(() {
                dataAwal = value! as int;
              });
            },
          ),
        ),
      ),
    );
  }
}

// Nantika akan menggunakan package dropdown_search,
// karena jarang sekali menggunakan dropdown bawaan flutter