import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/model/product.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;

  const ProductDetailScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  Product get product => widget.product;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: product.image,
              height: 200,
              width: double.maxFinite,
            ),
            const SizedBox(height: 20),
            Text(
              product.name,
              style: themeData.textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 20,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) => const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text(
                    'Home & Garden',
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
                separatorBuilder: (_, index) => const Text('|  '),
                itemCount: 4,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'USD ${product.price.toStringAsFixed(2)}',
              style: themeData.textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'USD ${product.description}',
              style: themeData.textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: TextButton.icon(
          style: TextButton.styleFrom(
            backgroundColor: Colors.amber,
            primary: Colors.white,
          ),
          onPressed: () {},
          icon: const Icon(Icons.add_shopping_cart_outlined),
          label: const Text('Add to Cart'),
        ),
      ),
    );
  }
}
