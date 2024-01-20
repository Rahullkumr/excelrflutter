import 'package:flutter/material.dart';

class GreenScreen extends StatelessWidget {
  const GreenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text(
          "Green Screen",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
