import 'package:flutter/material.dart';

class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String unit;
  final double rating;

  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.unit,
    this.rating = 4.5,
  });

  // Factory constructor to create a Product from a CSV row (List)
  // Expected order: id, name, description, price, imageUrl, unit, rating (optional)
  factory Product.fromCsv(List<dynamic> row) {
    return Product(
      id: row.length > 0 ? row[0].toString() : '',
      name: row.length > 1 ? row[1].toString() : 'Unknown Product',
      description: row.length > 2 ? row[2].toString() : '',
      price: row.length > 3 ? (double.tryParse(row[3].toString()) ?? 0.0) : 0.0,
      imageUrl: row.length > 4 ? row[4].toString() : '',
      unit: row.length > 5 ? row[5].toString() : 'pc',
      rating: row.length > 6 ? (double.tryParse(row[6].toString()) ?? 4.5) : 4.5,
    );
  }
}

class Category {
  final String id;
  final String name;
  final IconData icon;
  final Color color;

  const Category({
    required this.id,
    required this.name,
    required this.icon,
    required this.color,
  });
}
