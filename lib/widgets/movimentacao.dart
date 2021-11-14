import 'package:flutter/material.dart';

class Movimentacao extends StatefulWidget {
  Movimentacao({Key? key, required this.rowNumber, required this.callback}) : super(key: key);

  int rowNumber;
  Function callback;

  @override
  _MovimentacaoState createState() => _MovimentacaoState();
}

class _MovimentacaoState extends State<Movimentacao> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                "${widget.rowNumber + 1}.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: TextField(
                onChanged: (text) {
                  print(text);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Category',
                ),
              ),
            ),
            Icon(Icons.attach_money),
            Expanded(
              child: TextField(
                onChanged: (text) {
                  print(text);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Cost',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
