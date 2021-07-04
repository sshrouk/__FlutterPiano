import 'package:flutter/material.dart';

class PianoButton extends StatelessWidget {
  PianoButton({
    @required this.buttonColor,
    @required this.buttonName,
    @required this.buttonNameColor,
    @required this.buttonWidth,
    @required this.onPressed,
  });

  final buttonColor;
  final buttonName;
  final buttonNameColor;
  final buttonWidth;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            width: buttonWidth,
            decoration: BoxDecoration(
              color: buttonColor,
              border: Border.all(),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                buttonName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: buttonNameColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
