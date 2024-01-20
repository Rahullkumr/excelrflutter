import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// Model class(POJO in Java)
class Posts {
  final int id;
  final int userId;
  final String title;
  final String body;

  Posts({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });
}

class MyApi extends StatefulWidget {
  const MyApi({super.key});

  @override
  State<MyApi> createState() => _MyApiState();
}

class _MyApiState extends State<MyApi> {
  Future<List<Posts>> getRequest() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    final response = await http.get(url);
    // deserialization, converting json into Dart Object
    var responseData = json.decode(response.body);

    List<Posts> users = [];
    for (var singlePost in responseData) {
      Posts user = Posts(
          id: singlePost["id"],
          userId: singlePost["userId"],
          title: singlePost["title"],
          body: singlePost["body"]);
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fetch and display API data"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getRequest(),
        builder: (BuildContext ctx, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (ctx, index) => Card(
                margin: const EdgeInsets.all(5),
                color: Colors.brown,
                elevation: 15,
                child: ListTile(
                  title: Text(
                    snapshot.data[index].title,
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      snapshot.data[index].body,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
