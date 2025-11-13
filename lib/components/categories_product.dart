import 'package:e_comerce/components/shape_product_button.dart';
import 'package:e_comerce/components/text_custom.dart';
import 'package:e_comerce/statics/product.dart';
import 'package:flutter/material.dart';

class CategoriesProduct extends StatelessWidget {
  const CategoriesProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Product.values.map((e) => e.name.toUpperCase()).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextCustom(
          text: 'Categories',
          fonsize: 26,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            ShapedProductButton(
              namaProduct: product[0].toString(),
              onPressed: () {},
            ),
            ShapedProductButton(
              namaProduct: product[1].toString(),
              onPressed: () {},
            ),
            ShapedProductButton(
              namaProduct: product[2].toString(),
              onPressed: () {},
            ),
            ShapedProductButton(
              namaProduct: product[3].toString(),
              onPressed: () {},
            ),
            ShapedProductButton(
              namaProduct: product[4].toString(),
              onPressed: () {},
            ),
            ShapedProductButton(
              namaProduct: product[5].toString(),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
