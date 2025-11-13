import 'package:flutter/material.dart';

class ShapedContainer extends StatelessWidget {
  const ShapedContainer({
    super.key,
    this.height = 200,
    this.width = 200,
    required this.child,
    this.colors = const [Colors.deepPurple, Colors.blueAccent],
  });
  final double height;
  final double width;
  final Widget child;
  final List<Color> colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors),
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
