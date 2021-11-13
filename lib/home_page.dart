import 'package:controle_financeiro/widgets/botao.dart';
import 'package:flutter/material.dart';

import 'widgets/lista.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

String total = "VALOR";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Container(
        alignment: Alignment.topCenter,
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child:Image.asset('assets/images/fatec.png',
                  height: 150,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width * 0.7,
                  color: Colors.red,
                  child: Text(
                    "Valor Total R\$"+total,
                    style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.4,
                  color: Colors.teal,
                  child: Lista(),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Botao(
                  icon: Icons.arrow_circle_up_rounded, 
                  text: "Receita", 
                  cor: Colors.green,
                ),
                Botao(
                  icon: Icons.arrow_circle_down_rounded, 
                  text: "Despesa", 
                  cor: Colors.red,
                )
              ]
            ),
            
          ]    
        ),
      ),
    );
  }
}




