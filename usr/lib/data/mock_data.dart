import 'package:flutter/material.dart';
import '../models/data_models.dart';

class MockData {
  static const List<Category> categories = [
    Category(id: '1', name: 'Vegetables', icon: Icons.eco, color: Colors.green),
    Category(id: '2', name: 'Fruits', icon: Icons.apple, color: Colors.redAccent),
    Category(id: '3', name: 'Dairy', icon: Icons.local_drink, color: Colors.blue),
    Category(id: '4', name: 'Bakery', icon: Icons.breakfast_dining, color: Colors.orange),
    Category(id: '5', name: 'Meat', icon: Icons.restaurant, color: Colors.red),
  ];

  static const List<Product> products = [
    Product(
      id: '1',
      name: 'Fresh Bananas',
      description: 'Organic fresh bananas from local farms.',
      price: 1.50,
      imageUrl: 'https://images.unsplash.com/photo-1603833665858-e61d17a86279?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60',
      unit: 'kg',
    ),
    Product(
      id: '2',
      name: 'Red Apples',
      description: 'Sweet and crunchy red apples.',
      price: 2.20,
      imageUrl: 'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60',
      unit: 'kg',
    ),
    Product(
      id: '3',
      name: 'Whole Milk',
      description: 'Fresh whole milk, pasteurized.',
      price: 1.20,
      imageUrl: 'https://images.unsplash.com/photo-1563636619-e9143da7973b?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60',
      unit: 'L',
    ),
    Product(
      id: '4',
      name: 'Broccoli',
      description: 'Fresh green broccoli heads.',
      price: 1.80,
      imageUrl: 'https://images.unsplash.com/photo-1459411621453-7b03977f4bfc?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60',
      unit: 'pc',
    ),
    Product(
      id: '5',
      name: 'Chicken Breast',
      description: 'Boneless skinless chicken breast.',
      price: 5.50,
      imageUrl: 'https://images.unsplash.com/photo-1604503468506-a8da13d82791?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60',
      unit: 'kg',
    ),
    Product(
      id: '6',
      name: 'Sourdough Bread',
      description: 'Freshly baked sourdough bread.',
      price: 3.00,
      imageUrl: 'https://images.unsplash.com/photo-1585478259539-e6215b1e88ea?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60',
      unit: 'loaf',
    ),
  ];
}
