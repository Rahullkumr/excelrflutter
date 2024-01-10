import 'package:flutter/material.dart';

class ExploringWidgets extends StatelessWidget {
  const ExploringWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exploring Widgets"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "First Text Inside Expanded widget",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Second Text",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                "Images/ava.png",
                height: 200,
                width: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: (){},
                    child: Text("Click Me"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    child: Text("Sign In"),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration:
                          InputDecoration(labelText: "Enter some text here"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
