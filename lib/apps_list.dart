import 'package:flutter/material.dart';
import 'package:myapp/alert.dart';
import 'package:myapp/bottom_nav_bar.dart';
import 'package:myapp/exploring.dart';
import 'package:myapp/hello_world.dart';
import 'package:myapp/longlist.dart';
import 'package:myapp/my_api.dart';
import 'package:myapp/my_shared_preferences.dart';
import 'package:myapp/mylistview.dart';
import 'package:myapp/navigation_and_routing.dart';
import 'package:myapp/random_num.dart';
import 'package:myapp/user_inp_disp.dart';

class AppsList extends StatelessWidget {
  const AppsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Excelr Flutter Apps"),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const HelloWorld();
                    },
                  ),
                );
              },
              child: getCard("1", "Hello World", "A Stateless App"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const ExploringWidgets();
                  }),
                );
              },
              child: getCard("2", "Exploring Widgets", "A Stateless App"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (kuchv) {
                      return const RandomNum();
                    },
                  ),
                );
              },
              child: getCard("3", "Random Number", "A Stateless App"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (kuchv) {
                      return const MyListView();
                    },
                  ),
                );
              },
              child: getCard("4", "ListView Example", "A Stateless App"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (kuchv) {
                      return const MyLongList();
                    },
                  ),
                );
              },
              child: getCard("5", "Long List", "listview.builder"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (kuchv) {
                      return const MyAlertBox();
                    },
                  ),
                );
              },
              child: getCard("6", "AlertBox example", "A Stateless App"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const UserInp();
                  }),
                );
              },
              child: getCard("7", "User Input and Display",
                  "Take input and display it when submit button is clicked"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const NavigationAndRouting();
                  }),
                );
              },
              child: getCard("8", "Routing/Navigation example",
                  "Navigate and pass data b/w screens"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyBottomNavBar(),
                  ),
                );
              },
              child: getCard(
                  "9", "Bottom Navigation Bar Example", "A stateful app"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApi()),
                );
              },
              child: getCard("10", "Network Call",
                  "Get data from api and print using longlist"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MySharedPreferences()),
                );
              },
              child: getCard("11", "Shared Preferences Example",
                  "store small data locally"),
            ),
          ],
        ),
      ),
    );
  }
}

const String lead = '', titl = '', subtitl = '';

getCard(lead, titl, subtitl) {
  return Card(
    elevation: 5,
    child: ListTile(
      leading: Text(lead),
      title: Text(titl),
      subtitle: Text(subtitl),
      trailing: const Icon(Icons.arrow_forward_ios),
    ),
  );
}
