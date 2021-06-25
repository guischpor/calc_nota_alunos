import 'package:flutter/material.dart';

class CardNota extends StatefulWidget {
  final double resultado;
  final String mensagem;

  const CardNota({
    this.resultado,
    this.mensagem,
  });

  @override
  _CardNotaState createState() => _CardNotaState();
}

class _CardNotaState extends State<CardNota> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 320,
      child: Card(
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sua nota é:',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '${widget.resultado}',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '${widget.mensagem}',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
