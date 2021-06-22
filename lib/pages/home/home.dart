import 'package:calc_nota_alunos/components/calc_button.dart';
import 'package:calc_nota_alunos/components/card_nota.dart';
import 'package:calc_nota_alunos/components/form_field_notas.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Notas'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            CardNota(resultado: 70),
            SizedBox(height: 20),
            FormFieldNotas(
              labelText: 'Nota 1',
            ),
            SizedBox(height: 5),
            FormFieldNotas(
              labelText: 'Nota 2',
            ),
            SizedBox(height: 5),
            FormFieldNotas(
              labelText: 'Nota 3',
            ),
            SizedBox(height: 5),
            FormFieldNotas(
              labelText: 'Nota 4',
            ),
            SizedBox(height: 20),
            CalcButton(
              title: 'Calcular Nota',
              color: Colors.blue,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
