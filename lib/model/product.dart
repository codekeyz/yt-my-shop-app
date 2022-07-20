import 'package:flutter/material.dart';

class Product {
  final String name;
  final String? description;
  final double price;
  final ImageProvider image;

  const Product(
    this.name,
    this.price,
    this.image, {
    this.description,
  });
}
