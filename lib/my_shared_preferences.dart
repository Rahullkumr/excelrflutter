import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences extends StatefulWidget {
  const MySharedPreferences({super.key});

  @override
  State<MySharedPreferences> createState() => _MyAppState();
}

class _MyAppState extends State<MySharedPreferences> {
  final TextEditingController _controller = TextEditingController();
  String _savedText = '';

  @override
  // life cycle of widget, this method gets called before build(), when screen loads
  void initState() {
    super.initState();
    loadSavedData();
  }

  saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('saved_text', _controller.text);
    loadSavedData();
  }

  loadSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _savedText = prefs.getString('saved_text') ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Shared Preferences Example"),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    labelText: "Enter text",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(                  
                  onPressed: saveData,
                  child: const Text("Save"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Saved Data: $_savedText",
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      
    );
  }
}
