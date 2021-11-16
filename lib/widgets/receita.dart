import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class Receita extends StatefulWidget {
  Receita({Key? key,required this.rowNumber, required this.callback}) : super(key: key);

  int rowNumber;
  Function callback;

  @override
  _ReceitaState createState() => _ReceitaState();
}

class _ReceitaState extends State<Receita> {

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green[200],
      child: Padding(
        padding: const EdgeInsets.all(0.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.north_east_rounded),
            Expanded(
              child: TextField(
                onChanged: (text) {
                  print(text);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Descrição',
                  labelStyle: TextStyle(fontSize: 13),
                ),
              ),
            ),
            Text("R\$"),
            Expanded(
              child: TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                      RegExp(r'[0-9]+(\.){0,1}[0-9]*'))
                ],
                onChanged: (text) {
                  double val = 0.0;
                  try {
                    val = double.parse(text);
                  } catch (e) {
                  }
                  widget.callback(widget.rowNumber, val);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Valor',
                  labelStyle: TextStyle(fontSize: 13),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
