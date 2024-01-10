import 'dart:math';
import 'package:flutter/material.dart';

class RandomNum extends StatelessWidget {
  const RandomNum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Number"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "${randomnum()}",
          style: const TextStyle(
            fontSize: 150,
          ),
        ),
      ),
    );
  }
}
int randomnum() {
  int num = Random().nextInt(100);
  return num;
}
