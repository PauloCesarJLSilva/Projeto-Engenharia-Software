import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class Movimentacao extends StatefulWidget {
  Movimentacao({Key? key,required this.rowNumber, required this.callback}) : super(key: key);

  int rowNumber;
  Function callback;

  @override
  _MovimentacaoState createState() => _MovimentacaoState();
}

class _MovimentacaoState extends State<Movimentacao> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.yellow,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.sticky_note_2_outlined),
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
            Icon(Icons.attach_money),
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
                    print("text is not convertible to double");
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
