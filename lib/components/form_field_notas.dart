import 'package:flutter/material.dart';

class FormFieldNotas extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;

  FormFieldNotas({
    this.controller,
    this.keyboardType,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: labelText,
        ),
      ),
    );
  }
}
