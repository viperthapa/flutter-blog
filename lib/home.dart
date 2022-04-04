import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
