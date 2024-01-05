<h1 align="center"> Day 6 (Flutter Excelr)</h1>


## Today's App 

<img src="../Images/day6.jpg">

### main.dart

```dart
import 'package:flutter/material.dart';
import 'package:myapp/contactScreen.dart';
// import 'package:myapp/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Hello",
      home: ContactScreen(),
    );
  }
}
```

### contactScreen.dart

```dart
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Screen"),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Row(
              children: [
                Expanded(
                  child: Text(
                    "First Text inside Expanded widget",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    "Second Text",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'images/ava.png',
                  width: 200,
                  height: 200,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  children: [
                    ElevatedButton(onPressed: (){}, child: const Text("Click me"),),
                  ],
                ),
                const SizedBox(width: 20,),
                Column(
                  children: [
                    ElevatedButton(onPressed: (){}, child: const Text("Sign In"),),
                  ],
                )
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Enter some text here",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

```


<br><br>
<h1 align="center"> <a href="/Notes/day8.md">Day 8 Flutter</a></h1>