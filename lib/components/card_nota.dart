import 'package:flutter/material.dart';

class CardNota extends StatelessWidget {
  final int resultado;

  CardNota({
    this.resultado = 0,
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
          ],
        ),
      ),
    );
  }
}
