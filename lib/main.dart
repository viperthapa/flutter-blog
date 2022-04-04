import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutterblog/drawer.dart';
import 'package:flutterblog/home.dart';

void main() {
  runApp(MaterialApp(
    title: "My blog",
    home: Homepage(),
    theme: ThemeData(primarySwatch: Colors.deepPurple),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("my blog"),
        ),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                child: Home(),
              )),
        ),
        drawer: MyDrawer(),
        floatingActionButtonLocation: FloatingActionButtonLocation
            .endFloat, //specify the location of button to placed
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.edit),
        ));
  }
}
