import 'package:flutter/material.dart';

class IconShapedButton extends StatelessWidget {
  const IconShapedButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon)),
    );
  }
}
