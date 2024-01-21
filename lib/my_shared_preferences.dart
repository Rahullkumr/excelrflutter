import 'package:flutter/material.dart';

class MySharedPreferences extends StatelessWidget {
  const MySharedPreferences({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preferences Example"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("sp"),
      ),
    );
  }
}
