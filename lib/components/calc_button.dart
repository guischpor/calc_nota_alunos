import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final Color color;
  final Function onPressed;
  final String title;

  CalcButton({
    this.color,
    this.onPressed,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: RaisedButton(
        color: color,
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
