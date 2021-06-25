import 'package:calc_nota_alunos/components/calc_button.dart';
import 'package:calc_nota_alunos/components/card_nota.dart';
import 'package:calc_nota_alunos/components/form_field_notas.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String msg = '';
  double resposta;

  final nota1Controller = TextEditingController();
  final nota2Controller = TextEditingController();
  final nota3Controller = TextEditingController();
  final nota4Controller = TextEditingController();

  void _resetFields() {
    nota1Controller.text = '';
    nota2Controller.text = '';
    nota3Controller.text = '';
    nota4Controller.text = '';
    setState(() {
      msg = '';
      resposta = 0.0;
    });
  }

  void _calculaNota() {
    setState(() {
      double nota1 = double.tryParse(nota1Controller.text);
      double nota2 = double.tryParse(nota2Controller.text);
      double nota3 = double.tryParse(nota3Controller.text);
      double nota4 = double.tryParse(nota4Controller.text);

      double res = (nota1 + nota2 + nota3 + nota4) / 4;

      if (res >= 70.0) {
        print('aprovado: ' + res.toStringAsPrecision(2));
        resposta = res;
        msg = 'Aprovado';
      }

      if (res < 70.0) {
        print('reprovado: ' + res.toStringAsPrecision(2));
        resposta = res;
        msg = 'Reprovado';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Notas'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _resetFields,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            CardNota(
              resultado: resposta != null
                  ? double.tryParse(resposta.toStringAsPrecision(2))
                  : 0.0,
              mensagem: msg.isEmpty ? '----' : msg,
            ),
            SizedBox(height: 20),
            FormFieldNotas(
              key: UniqueKey(),
              labelText: 'Nota 1',
              controller: nota1Controller,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 5),
            FormFieldNotas(
              key: UniqueKey(),
              labelText: 'Nota 2',
              controller: nota2Controller,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 5),
            FormFieldNotas(
              key: UniqueKey(),
              labelText: 'Nota 3',
              controller: nota3Controller,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 5),
            FormFieldNotas(
              key: UniqueKey(),
              labelText: 'Nota 4',
              controller: nota4Controller,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            CalcButton(
              title: 'Calcular Nota',
              color: Colors.blue,
              onPressed: () => _calculaNota(),
            ),
          ],
        ),
      ),
    );
  }
}
