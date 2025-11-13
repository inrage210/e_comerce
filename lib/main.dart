import 'package:e_comerce/components/icon_shape_button.dart';
import 'package:e_comerce/components/shaped_container.dart';
import 'package:e_comerce/components/text_custom.dart';
import 'package:e_comerce/components/text_shape_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: HomeScreen(),
    );
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildAppBar(controller: searchController),
              SizedBox.square(dimension: 20),
              _buildSlideShow(),
              SizedBox.square(dimension: 20),
              CategoriesProduct(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSlideShow() {
    return ShapedContainer(
      width: 400,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 10, 0),
        child: Stack(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          alignment: AlignmentGeometry.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextCustom(
                        text: 'iPhone 16 Pro',
                        fonsize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      TextCustom(text: 'Extraordinary Visual'),
                      TextCustom(text: '& Exceptional Power'),
                      SizedBox.square(dimension: 30),
                      TextShapedButton(text: 'Shop Now', onPressed: () {}),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: -160,
              right: -70,
              child: Image.asset(
                width: 360,
                'assets/images/iphone.png',
                fit: BoxFit.cover,
              ),
            ),
            PositionedDirectional(
              bottom: 20,
              child: ShapedContainer(
                height: 10,
                width: 10,
                colors: [Colors.white, Colors.white],
                child: SizedBox(),
              ),
            ),
          ],
        ),
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

class CategoriesProduct extends StatelessWidget {
  const CategoriesProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextCustom(
          text: 'Categories',
          fonsize: 26,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: Product.values.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            final product = Product.values
                .map((e) => e.name.toUpperCase())
                .toList();
            return ShapedProductButton(
              namaProduct: product[index].toString(),
              onPressed: () {},
            );
          },
        ),
      ],
    );
  }
}

enum Product {
  mobile('mobile'),
  headphone('headphone'),
  tablets('tablet'),
  laptop('laptop'),
  speaker('speaker'),
  more('more');

  const Product(this.name);
  final String name;
}

class ShapedProductButton extends StatelessWidget {
  const ShapedProductButton({
    super.key,
    required this.namaProduct,
    required this.onPressed,
  });
  final String namaProduct;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ShapedContainer(
        width: 80,
        height: 100,
        colors: [Colors.white, Colors.white],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(child: Image.asset('assets/images/smartphone.png')),
            TextCustom(
              fontWeight: FontWeight.w700,
              text: namaProduct,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
