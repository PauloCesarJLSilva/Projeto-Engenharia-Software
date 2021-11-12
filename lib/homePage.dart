import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Text("ABC"),
            Text("DEF"),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Título"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Add'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}