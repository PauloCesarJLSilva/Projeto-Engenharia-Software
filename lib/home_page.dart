import 'package:controle_financeiro/widgets/botao.dart';
import 'package:controle_financeiro/widgets/movimento.dart';
import 'package:flutter/material.dart';

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
        color: Colors.white,
        //height: MediaQuery.of(context).size.height,
        height: 500,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                  height: 20,
                  width: 100,
                  color: Colors.white,
                ),
              ],
            ),
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
              children: [
                ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
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
                    ),
                  ],
                )
              ],
            ),
          ]    
        ),
      ),
    );
  }
}

