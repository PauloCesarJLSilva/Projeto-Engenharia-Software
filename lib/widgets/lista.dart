import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  const Lista({Key? key}) : super(key: key);

Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(2),
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
       children: <Widget>[
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
         Text("Teste"),
       ]
    );
  }
}