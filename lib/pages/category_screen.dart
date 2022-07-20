import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/model/category.dart';
import 'package:flutter_boilerplate/model/product.dart';
import 'package:flutter_boilerplate/pages/widget/category_item.dart';
import 'package:flutter_boilerplate/router/user_router.gr.dart';

import 'widget/product_item.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final List<Category> categoryList = const [
    Category('Electronics', 1),
    Category('Home & Garden', 2),
    Category('Sport & Outdoor', 3),
    Category('Grocery', 4),
  ];

  final List<Product> _productsList = const [
    Product(
      'Aloe Vera',
      20.00,
      AssetImage('assets/img/aloe_vera.png'),
      description:
          "Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.",
    ),
    Product(
      'Basket Ball',
      50.00,
      AssetImage('assets/img/basketball.png'),
      description:
          "Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.",
    ),
    Product(
      'Fruits',
      100.00,
      AssetImage('assets/img/fruits.png'),
      description:
          "Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.",
    ),
    Product(
      'Allstars',
      90.00,
      AssetImage('assets/img/allstar.png'),
      description:
          "Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.",
    ),
    Product(
      'Allstar Newest',
      100.00,
      AssetImage('assets/img/allstar_nice.png'),
      description:
          "Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.",
    )
  ];

  Category? _selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(title: const Text('Categories')),
      body: Row(
        children: [
          Container(
            width: 140,
            color: Colors.white,
            child: ListView.separated(
              itemBuilder: (_, index) {
                final item = categoryList[index];
                return CategoryItem(
                  category: item,
                  onTap: () {
                    setState(() => _selectedCategory = item);
                  },
                );
              },
              separatorBuilder: (_, i) => const Divider(),
              itemCount: categoryList.length,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    elevation: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('SEE ALL PRODUCTS'),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.chevron_right),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GridView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(16),
                    children: _productsList
                        .map((e) => ProductItem(
                            product: e,
                            onTap: () {
                              AutoRouter.of(context)
                                  .push(ProductDetailRoute(product: e));
                            }))
                        .toList(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.6,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
