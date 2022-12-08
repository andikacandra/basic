import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

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
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> menuList = [
      Text("User"),
      Text("Email"),
      Text("Add"),
      Text("Camera"),
      Text("Menu"),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navbar'),
      ),
      body: Center(child: menuList[activeIndex]),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.blue,
        items: [
          TabItem(icon: Icons.people, title: "User"),
          TabItem(icon: Icons.mail_rounded, title: "Email"),
          TabItem(icon: Icons.add, title: "Add"),
          TabItem(icon: Icons.camera, title: "Camera"),
          TabItem(icon: Icons.menu, title: "Menu"),
        ],
        initialActiveIndex: activeIndex,
        onTap: (index) {
          print(index);
          setState(() {
            activeIndex = index;
          });
        },
      ),
    );
  }
}
