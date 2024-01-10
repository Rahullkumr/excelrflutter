import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MyAlertBox extends StatelessWidget {
  const MyAlertBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Box on button click"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) {
                    return AlertDialog(
                      title: const Text("My alert box"),
                      content: const Text("Are you fine"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: const Text("OK"))
                      ],
                    );
                  },
                );
              },
              child: const Text("using sir's method"),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Alert(
                  context: context,
                  title: "Alert Box",
                  desc: "using r_flutter package",
                ).show();
              },
              child: const Text("using r_flutter package"),
            ),
          ],
        ),
      ),
    );
  }
}


/*
Alert(
  context: context,
  title: 'Finished!',
  desc: 'You\'ve reached the end of the quiz.',
).show();
*/