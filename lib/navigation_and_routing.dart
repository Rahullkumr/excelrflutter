import 'package:flutter/material.dart';
import 'package:myapp/disp_new_scr.dart';

class NavigationAndRouting extends StatefulWidget {
  const NavigationAndRouting({super.key});

  @override
  State<NavigationAndRouting> createState() => _NavigationAndRoutingState();
}

class _NavigationAndRoutingState extends State<NavigationAndRouting> {
  TextEditingController inputTxt = TextEditingController();
  var inputData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Static or Named Routing"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: inputTxt,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {  
              setState(() {
                inputData = inputTxt.text;
              });            
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DispNewScr(recvdData: inputData);
              }));
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }
}
