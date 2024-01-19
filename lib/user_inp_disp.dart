import 'package:flutter/material.dart';

class UserInp extends StatefulWidget {
  const UserInp({super.key});

  @override
  State<UserInp> createState() => _UserInpState();
}

class _UserInpState extends State<UserInp> {
  TextEditingController inputController = TextEditingController();
  var txt = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display User Input"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                txt = inputController.text;
              });
            },
            child: const Text("Submit"),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  txt,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
