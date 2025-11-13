import 'package:e_comerce/components/icon_shape_button.dart';
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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: _buildAppBar(controller: searchController),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar({
    required TextEditingController controller,
  }) {
    return AppBar(
      leading: IconShapedButton(icon: Icons.barcode_reader, onPressed: () {}),
      title: SearchBar(
        controller: controller,
        backgroundColor: WidgetStatePropertyAll(Colors.white),
        elevation: WidgetStateProperty.all(0),
        leading: Row(
          children: [
            Icon(Icons.search, size: 36, color: Colors.grey),
            SizedBox(width: 10),
            Text('Search', style: TextStyle(fontSize: 22, color: Colors.grey)),
          ],
        ),
        trailing: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_enhance_outlined),
          ),
        ],
      ),
      actions: [
        IconShapedButton(
          icon: Icons.shopping_cart_checkout_outlined,
          onPressed: () {},
        ),
      ],
    );
  }
}
