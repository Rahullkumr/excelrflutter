import 'package:flutter/material.dart';

class DispNewScr extends StatefulWidget {
  String? recvdData;
  DispNewScr({required this.recvdData});

  @override
  State<StatefulWidget> createState() {
    return DispNewScrState(recvdData!);
  }
}

class DispNewScrState extends State<DispNewScr> {
  String recvdData;
  DispNewScrState(this.recvdData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 20,
          color: Colors.blueAccent,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text(
              "Received data: $recvdData",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}
