import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/model/product.dart';
import 'package:flutter_boilerplate/pages/widget/product_item.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Product> _productsList = const [
    Product(
      'Aloe Vera',
      20.00,
      AssetImage('assets/img/aloe_vera.png'),
    ),
    Product(
      'Basket Ball',
      50.00,
      AssetImage('assets/img/basketball.png'),
    ),
    Product(
      'Fruits',
      100.00,
      AssetImage('assets/img/fruits.png'),
    ),
    Product(
      'Allstars',
      90.00,
      AssetImage('assets/img/allstar.png'),
    ),
    Product(
      'Allstar Newest',
      100.00,
      AssetImage('assets/img/allstar_nice.png'),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/img/logo_name.png'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
        bottom: PreferredSize(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: const [
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Searching for products, brands',
                    prefixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          preferredSize: const Size.fromHeight(55),
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(16),
        children: _productsList.map((e) => ProductItem(product: e)).toList(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.3,
        ),
      ),
    );
  }
}
