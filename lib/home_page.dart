import 'package:controle_financeiro/widgets/botao.dart';
import 'package:flutter/material.dart';
import 'widgets/despesa.dart';
import 'widgets/receita.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

String totalReceita = "0";
String totalDepesa = "0";
int totalRowReceita = 0;
int totalRowDespesa = 0;
List<double> valorLinhaReceita = [];
List<double> valorLinhaDespesa = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Container(
        alignment: Alignment.topCenter,
        color: Colors.blue[900],
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(                  
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.3,
                  color: Colors.white38,
                  alignment: Alignment.center,
                  child: Text(
                    "Receita R\$"+totalReceita,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                ),
                Container(                  
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.3,
                  color: Colors.white38,
                  alignment: Alignment.center,
                  child: Text(
                    "Despesa R\$"+totalReceita,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                ),
              ],
            ),
            Row(children: [SizedBox(height: 10,)],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: Colors.white10,
                  child: ListView(
                    padding: EdgeInsets.all(2),
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      for (int i = 0; i < totalRowReceita; ++i)
                      Receita(
                        rowNumber: i,
                        callback: _atualizaValorLinha,
                        )
                    ]
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: Colors.white10,
                  child: ListView(
                    padding: EdgeInsets.all(2),
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      for (int i = 0; i < totalRowReceita; ++i)
                      Despesa(
                        rowNumber: i,
                        callback: _atualizaValorLinha,
                        )
                    ]
                  ),
                )
              ],
            ),
            Row(children: [SizedBox(height: 20,)],),
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
                  icon: Icons.delete, 
                  text: "Apagar", 
                  cor: Colors.blue,
                  onPressed: deletaLinhaReceita,
                ),
                Botao(
                  icon: Icons.south_west_rounded, 
                  text: "Despesa", 
                  cor: Colors.red,
                  onPressed: _addRow,               
                )
                Botao(
                  icon: Icons.delete,
                  text: "Apagar", 
                  cor: Colors.blue,
                  onPressed: deletaLinhaDespesa,
                ),
              ]
            ),           
          ]    
        ),
      ),
    );
  }

  void _addRow() {
    setState(() {
      totalRowReceita += 1;
      valorLinhaReceita.add(0);
    });
  }

  void _atualizaTotal() {
    setState(() {
      double somaTotal = valorLinhaReceita.length > 0
          ? valorLinhaReceita.reduce((value, element) => value + element)
          : 0;

      if (somaTotal > 0.0) {
        totalReceita = somaTotal.toString();
      } else {
        totalReceita = "0";
      }
    });
  }

  void _atualizaValorLinha(int rowNum, double newVal) {
    setState(() {
      if (valorLinhaReceita.length > rowNum) {
        valorLinhaReceita[rowNum] = newVal;
      }
    });
    _atualizaTotal();
  }

  void deletaLinhaReceita() {
    setState(() {
      int newTotalRow = totalRowReceita - 1;
      totalRowReceita = newTotalRow < 0 ? 0 : newTotalRow;
      if (valorLinhaReceita.isNotEmpty) {
        valorLinhaReceita.removeLast();
      }
    });

    _atualizaTotal();
  }

}




