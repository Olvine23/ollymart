
import 'package:flutter/material.dart';
import 'package:ollymart/screens/shopscreen/widgets/product_card.dart';

class ProductGridDemo extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      'imageUrl': 'assets/airforce.jpg',
      "title": "Cool Sneakers",
      "description": "Stylish and comfortable sneakers.",
      "price": "\$49.99",
    },
    {
    'imageUrl': 'assets/ladies.jpg',
      "title": "Sporty Watch",
      "description": "Waterproof and durable.",
      "price": "\$89.99",
    },
    {
     'imageUrl': 'assets/nike.jpg',
      "title": "Leather Bag",
      "description": "Premium quality leather.",
      "price": "\$129.99",
    },
    {
     'imageUrl': 'assets/tshirts.jpg',
      "title": "Sunglasses",
      "description": "Stylish UV-protected sunglasses.",
      "price": "\$29.99",
    },
  ];

   ProductGridDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Two cards per row
              crossAxisSpacing: 16,
              mainAxisSpacing: 12,
                childAspectRatio: 0.6, // Adjust this value (reduce for taller cards)/ Adjust height/width ratio of cards
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductCard(
                imageUrl: product["imageUrl"]!,
                title: product["title"]!,
                description: product["description"]!,
                price: product["price"]!,
              );
            },
          ),
        ),
    );
     
  }
}
