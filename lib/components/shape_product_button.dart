import 'package:e_comerce/components/shaped_container.dart';
import 'package:e_comerce/components/text_custom.dart';
import 'package:flutter/material.dart';

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
        width: 100,
        height: 130,
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
