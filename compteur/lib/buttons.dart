import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final color;
  final textColor;
  final buttonText;
  final buttonTapped;

  const Button(
      {Key? key,
      this.color,
      this.textColor,
      this.buttonText,
      this.buttonTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonTapped,
      splashColor: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(fontSize: 20, color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
