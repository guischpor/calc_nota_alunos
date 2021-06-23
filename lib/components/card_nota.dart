import 'package:flutter/material.dart';

class CardNota extends StatelessWidget {
  final double resultado;
  final String mensagem;

  CardNota({
    this.resultado,
    this.mensagem,
  });

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
              '$resultado',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '$mensagem',
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
