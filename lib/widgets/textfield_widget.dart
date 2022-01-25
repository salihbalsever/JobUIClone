import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String? name;
  final double? fontSize;
  final Color? color;

  TextFieldWidget({this.color, this.name, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name!,
          style: TextStyle(
              color: color, fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}