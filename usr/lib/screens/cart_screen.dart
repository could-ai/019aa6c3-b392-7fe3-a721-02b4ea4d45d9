import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart_outlined, size: 100, color: Colors.grey.shade300),
            const SizedBox(height: 16),
            const Text(
              'Your cart is empty',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Start shopping to add items to your cart'),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Navigate back to home via the main wrapper controller if possible,
                // or just let the user tap the bottom nav.
              },
              child: const Text('Start Shopping'),
            ),
          ],
        ),
      ),
    );
  }
}
