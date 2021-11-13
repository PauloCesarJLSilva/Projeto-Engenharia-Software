import 'package:flutter/material.dart';

class Botao extends StatelessWidget {

  final IconData icon;
  final String text;
  final Color cor;

  const Botao({ Key? key, required this.icon, required this.text, required this.cor }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: cor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(icon),
                SizedBox(width: 10,),
                Text(text, style: TextStyle(
                  fontSize: 15)
                  ),
              ]
            ),

          ],
        ),
        onPressed: (){},
      ),
    );
  }
}