import 'package:flutter/material.dart';
import 'package:ollymart/screens/homepage/widgets/product_card.dart';

class HorizontalProductScroller extends StatelessWidget {
  final List<Map<String, String>> products;

  const HorizontalProductScroller({Key? key, required this.products})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, // Fixed height for the scrollable area
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductCard(
            imageUrl: product['imageUrl']!,
            name: product['name']!,
            price: product['price']!,
          );
        },
      ),
    );
  }
}