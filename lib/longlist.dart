import 'package:flutter/material.dart';

class MyLongList extends StatelessWidget {
  const MyLongList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Long List Example"),
        centerTitle: true,
      ),
      body: getLongList(),
    );
  }
}

getLongList() {
  var generatedList = generateListElements();
  var myListView = ListView.builder(
    itemCount: generatedList.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(
          generatedList[index],
        ),
      );
    },
  );
  return myListView;
}

generateListElements() {
  var myListItem = List.generate(20, (counter) => "Generated item $counter");
  return myListItem;
}
