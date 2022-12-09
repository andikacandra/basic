import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dropdown Search')),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: DropdownSearch(
          items: ["Andika", "Candra", "Perdana", "Linda", "Desintasari"],
          onChanged: (value) {
            print(value);
          },
          selectedItem: "Candra",
        ),
      ),
    );
  }
}
