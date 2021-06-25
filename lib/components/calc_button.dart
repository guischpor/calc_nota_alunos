import 'package:flutter/material.dart';

class CalcButton extends StatefulWidget {
  final Color color;
  final void Function() onPressed;
  final String title;

  CalcButton({
    this.color,
    this.onPressed,
    this.title,
  });

  @override
  _CalcButtonState createState() => _CalcButtonState();
}

class _CalcButtonState extends State<CalcButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: RaisedButton(
        color: widget.color,
        onPressed: widget.onPressed,
        child: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
