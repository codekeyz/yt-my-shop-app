import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/model/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  final VoidCallback onTap;

  const CategoryItem({
    Key? key,
    required this.category,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: Text(
            category.name,
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
