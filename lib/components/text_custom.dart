import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  const TextCustom({
    super.key,
    required this.text,
    this.fonsize = 12,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.white,
  });
  final String text;
  final double fonsize;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fonsize, color: color, fontWeight: fontWeight),
    );
  }
}
