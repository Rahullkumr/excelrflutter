import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserInp extends StatefulWidget {
  const UserInp({super.key});

  @override
  State<UserInp> createState() => _UserInpState();
}

class _UserInpState extends State<UserInp> {
  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display User Input"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: inputController,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}
