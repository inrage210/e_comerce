import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: EinsteinButton()));
  }
}

class EinsteinButton extends StatelessWidget {
  const EinsteinButton({
    super.key,
    this.color = Colors.blueAccent,
    this.text = 'Button Callback',
  });
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
