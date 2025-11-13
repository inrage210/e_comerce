import 'package:flutter/material.dart';

class TextShapedButton extends StatelessWidget {
  const TextShapedButton({
    super.key,
    this.color = Colors.black,
    required this.text,
    required this.onPressed,
  });
  final Color color;
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: color,
          ),
        ),
      ),
    );
  }
}
