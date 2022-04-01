import 'package:flutter/material.dart';

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
        body: Container(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("Viper creation"),
                  accountEmail: Text("vipercreation@example.com"),
                  currentAccountPicture: Image.network(
                      "https://images.unsplash.com/photo-1504593811423-6dd665756598?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80")),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                subtitle: Text("sub profile"),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(Icons.email_rounded),
                title: Text("Email"),
                subtitle: Text("sub email list"),
                trailing: Icon(Icons.search_sharp),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation
            .endFloat, //specify the location of button to placed
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.edit),
        ));
  }
}
