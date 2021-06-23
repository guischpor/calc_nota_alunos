import 'package:flutter/material.dart';

class FormFieldNotas extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;
  final Function(String) onChanged;

  FormFieldNotas({
    this.controller,
    this.keyboardType,
    this.labelText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: labelText,
        ),
      ),
    );
  }
}
