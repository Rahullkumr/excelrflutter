import 'package:flutter/material.dart';
import 'package:myapp/screen_green.dart';
import 'package:myapp/screen_orange.dart';
import 'package:myapp/screen_red.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  var myCurrentIndex = 0;
  var pages = [
    const OrangeScreen(),
    const GreenScreen(),
    const RedScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar"),
        centerTitle: true,
      ),
      body: pages[myCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink,
        iconSize: 30,
        currentIndex: myCurrentIndex, // makes icon active onTap
        onTap: (index){
          setState(() {
            myCurrentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Orange",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning),
            label: "Green",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.input),
            label: "Red",
          ),
        ],
      ),
    );
  }
}
