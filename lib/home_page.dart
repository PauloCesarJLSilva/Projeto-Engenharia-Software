import 'package:controle_financeiro/widgets/botao.dart';
import 'package:flutter/material.dart';
import 'widgets/movimentacao.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

String total = "0";
int totalRow = 0;

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
            Row(children: [SizedBox(height: 20,)],),
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
                  alignment: Alignment.center,
                  child: Text(
                    "Total R\$"+total,
                    style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.60,
                  color: Colors.teal,
                  child: ListView(
                    padding: EdgeInsets.all(2),
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      for (int i = 0; i < totalRow; ++i)
                      Movimentacao(
                        rowNumber: i,
                        callback: (){},
                        )
                    ]
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Botao(
                  icon: Icons.north_east_rounded, 
                  text: "Receita", 
                  cor: Colors.green,
                  onPressed: _addRow,
                ),
                Botao(
                  icon: Icons.south_west_rounded, 
                  text: "Despesa", 
                  cor: Colors.red,
                  onPressed: _addRow,               
                )
              ]
            ),           
          ]    
        ),
      ),
    );
  }

  void _addRow() {
    setState(() {
      totalRow += 1;
    });
  }

}




