import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// ignore: use_key_in_widget_constructors
class Home extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Home> {
  TextEditingController _namecontroller = TextEditingController();
  var myIntialText = "changed me";
  var url = "https://jsonplaceholder.typicode.com/posts";
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/bg.jpg'),
        const SizedBox(height: 25),
        const Text(
          "User login",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 100),
        const Padding(
          padding: EdgeInsets.all(14.0),
          child: TextField(
            decoration:
                InputDecoration(hintText: "Enter email", labelText: "Email"),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(14.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Enter Password", labelText: "Password"),
          ),
        ),
      ],
    );
  }
}
