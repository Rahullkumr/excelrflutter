import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Example"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text(
              "ListView Features",
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
              ),
            ),
          ),
          getListTile("used to display list of items", "1"),
          getListTile("list is Scrollable", "2"),
          getListTile(
              "supports multiple Constructors like listview.builder()", "3"),
          getListTile("other widgets can be used like image, text, etc", "4"),
          getListTile("Keyboard Dismiss Behavior on drag/custom", "5"),
          getListTile("supports both vertical and horizontal scrolling", "6"),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(              
                decoration: InputDecoration(labelText: "Write Something here"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

getListTile(txt, no) {
  return ListTile(
    leading: const Icon(Icons.arrow_forward),
    title: Text(txt),
    trailing: Text(no),
  );
}
