import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "My blog", home: Homepage()));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("my blog"),
        ),
        body: Container(
            color: Colors.purple,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(9),
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  padding: const EdgeInsets.all(9),
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  padding: const EdgeInsets.all(9),
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                )
              ],
            )));
  }
}
