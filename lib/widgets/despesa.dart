import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class Despesa extends StatefulWidget {
  Despesa({Key? key,required this.rowNumber, required this.callback}) : super(key: key);

  int rowNumber;
  Function callback;

  @override
  _DespesaState createState() => _DespesaState();
}

class _DespesaState extends State<Despesa> {

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red[200],
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.south_west_rounded),
            Expanded(
              child: TextField(
                onChanged: (text) {
                  print(text);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Descrição',
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
