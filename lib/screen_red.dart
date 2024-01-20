import 'package:flutter/material.dart';

class RedScreen extends StatelessWidget {
  const RedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          "Red Screen",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
