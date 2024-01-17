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
    return Container(child: TextField(
      controller: inputController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter your name',
      ),
    ),
    );
    );
  }
}
