import 'package:flutter/material.dart';

// Belajar Buttom Navigation Bar

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int activeNavigationBar;

  List contentMain = [
    Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.amber,
        child: Center(
          child: Text("Home"),
        ),
      ),
    ),
    Center(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.lightBlue,
        child: Center(
          child: Text("Card"),
        ),
      ),
    ),
    Center(
      child: Container(
        height: 300,
        width: 300,
        color: Colors.lightGreen,
        child: Center(
          child: Text("Profile"),
        ),
      ),
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    activeNavigationBar = 0;
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button Navigation Bar'),
        ),
        body: contentMain[activeNavigationBar],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: activeNavigationBar,
          backgroundColor: Colors.blue.shade500,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade700,
          onTap: (value) {
            setState(() {
              activeNavigationBar = value;
            });
          },
          items: [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "Card", icon: Icon(Icons.card_giftcard)),
            BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}
