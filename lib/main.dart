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
        child: Center(child: Text("This is flutter")),
      ),
    );
  }
}
