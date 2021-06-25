import 'package:flutter/material.dart';

class FormFieldNotas extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;
  final Function(String) onChanged;
  final Key key;

  FormFieldNotas({
    this.controller,
    this.keyboardType,
    this.labelText,
    this.onChanged,
    this.key,
  });

  @override
  _FormFieldNotasState createState() => _FormFieldNotasState();
}

class _FormFieldNotasState extends State<FormFieldNotas> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.key,
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          labelText: widget.labelText,
        ),
      ),
    );
  }
}
