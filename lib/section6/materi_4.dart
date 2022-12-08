import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

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
  Faker faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Glow'),
      ),
      body: Center(
        child: AvatarGlow(
          child: Material(
            elevation: 8,
            shape: CircleBorder(),
            child: CircleAvatar(
              backgroundImage:
                  NetworkImage(faker.image.image(keywords: ['employee'])),
              radius: 80,
            ),
          ),
          glowColor: Colors.red,
          endRadius: 140,
          duration: Duration(milliseconds: 500),
        ),
      ),
    );
  }
}
