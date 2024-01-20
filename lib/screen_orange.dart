import 'package:flutter/material.dart';

class OrangeScreen extends StatelessWidget {
  const OrangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Text(
          "Orange Screen",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
