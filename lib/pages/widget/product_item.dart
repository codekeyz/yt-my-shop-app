import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/model/product.dart';
import 'package:flutter_boilerplate/widgets/card_with_image.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardWithImage(
      imageHeight: 100,
      cardWidth: 200,
      title: product.name,
      description: 'USD ${product.price}',
      onTap: () {},
      imageProvider: product.image,
      alignment: CrossAxisAlignment.center,
      subtitleStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
    );
  }
}
