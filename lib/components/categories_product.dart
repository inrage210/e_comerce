import 'package:e_comerce/components/shape_product_button.dart';
import 'package:e_comerce/components/text_custom.dart';
import 'package:e_comerce/statics/product.dart';
import 'package:flutter/material.dart';

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
