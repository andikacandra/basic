import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Faker"),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          var imageUrl = faker.image.image(keywords: ['people']);
          print(imageUrl);
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text(faker.person.name()),
            subtitle: Text(faker.internet.email()),
          );
        },
      ),
    );
  }
}
