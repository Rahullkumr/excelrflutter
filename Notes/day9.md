<h1 align="center"> Day 9 (Flutter Excelr)</h1>

1. [Navigation / Routing](#navigation--routing)
2. [Dynamic routing](#dynamic-routing)
3. [Static routing (Named routing)](#static-routing-named-routing)
4. [Details about `push`](#details)
5. [Passing data b/w routes](#passing-data-bw-routes)

## Navigation / Routing
> navigating b/w two screens

- called Routes in Flutter
    - Dynamic routing 
    - Static routing (Named routing)

## Dynamic routing

```dart
ElevatedButton(
    onPressed: (){
        // DYNAMIC NAVIGATION
        //Navigator.pushReplacement(
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context){
                    return AlertScreen();
                }
            )
        )
    }, 
    child: const Text("Next Screen"),
)
```

## Static routing (Named routing)

- declare routes in MaterialApp and remove home: attribute

```dart
MaterialApp(
    routes: {
        ('/'):(context) => Home(),
        ('/input'):(context) => InputScreen(),
        ('/alert'):(context) => AlertScreen(),
    },
    debugShowCheckedModeBanner: false,
    title: 'Day9',
    // home: Home(),
)
```
```dart
ElevatedButton(
    onPressed: (){
        // STATIC NAVIGATION
        Navigator.pushNamed(context, "/alert");
    }, 
    child: const Text("Go to Input Screen"),
)
```

## Details

- push: 
    > dynamic navigation; uses STACK 
    - adds the new screen on top of the current screen in stack 
    - gives back button to go to previous screen

- pushReplacement:
    > dynamic navigation; uses STACK 
    - replaces the current screen with new screen in stack
    - going back is not possible

- pushNamed:
    > STATIC navigation, already declared the route names; uses STACK 
    - adds the new screen on top of the current screen in stack 
    - gives back button to go to previous screen

## Passing data b/w routes

```dart
// data passing screen
ElevatedButton(
    onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) {
                    return Home(
                        dataRec: name, // data being passed
                        // name is the variable which is storing input
                    );
                },
            ),
        );
    },
    child: const Text("goto HomePage"),
)
```

```dart
// receiving screen

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  String? dataRec;
  Home({required this.dataRec});

  @override
  State<StatefulWidget> createState(){
    return HomeState(dataRec!);
  }
}

class HomeState extends State<Home> {
  String dataRec;
  HomeState(this.dataRec);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Center(
            child: Text("Recieved Data is: $dataRec"),
          ),
        ],
      ),
    );
  }
}
```
<img src="Images/day9a.jpg" alt="sending image">
<img src="Images/day9b.jpg" alt="receiving image">


<br><br>
<h1 align="center"> <a href="/day10.md">Day 10 Flutter</a></h1>
