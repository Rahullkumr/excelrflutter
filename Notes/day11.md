<h1 align="center"> Day 11 (Flutter Excelr)</h1>

## Bottom Navigation bar

- BottomNavigationBar()
- BottomNavigationBarItem()

## Bottom Navigation bar

<img src="Images/day10a.jpg" alt="bottom navigation bar">

```dart
// inside Scaffold

bottomNavigationBar: BottomNavigationBar(
    items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "List Screen",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.refresh),
            label: "Random nos",
        ),
    ],
)
```

## Working code

<img src="Images/day10b.jpg" alt="bottom navigation bar homePage" width=350>
<img src="Images/day10c.jpg" alt="bottom navigation bar alertScreen">

```dart
import 'package:flutter/material.dart';
import 'package:myapp/alert_screen.dart';
import 'package:myapp/text_input_display.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  var myCurrentIndex = 0;
  var screens = [
    const LandingScreen(),
    const AlertScreen(),
    const InputScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[myCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amberAccent,
        iconSize: 30,
        currentIndex: myCurrentIndex, // makes icon active onTap
        onTap: (index) { // imp
          setState(() {
            myCurrentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning),
            label: "Alert",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.input),
            label: "Input",
          ),
        ],
      ),
    );
  }
}

```



<br><br>
<h1 align="center"> <a href="/Notes/day12.md">Day 12 Flutter</a></h1>