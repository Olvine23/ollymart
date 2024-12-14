import 'package:flutter/material.dart';
import 'package:ollymart/screens/homepage/components/categorieslist.dart';
import 'package:ollymart/screens/homepage/components/horizontal_product_slider.dart';
import 'package:ollymart/screens/homepage/widgets/image_withbtn.dart';
import 'package:ollymart/screens/homepage/widgets/pill_category.dart';
import 'package:ollymart/screens/homepage/widgets/product_card.dart';
import 'package:ollymart/screens/homepage/widgets/text_row.dart';
import 'package:ollymart/screens/homepage/widgets/tilt.dart';

class Homescreen extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {'imageUrl': 'assets/airforce.jpg', 'title': 'Shoes'},
    {'imageUrl': 'assets/tshirts.jpg', 'title': 'T-Shirts'},
    {'imageUrl': 'assets/ladies.jpg', 'title': 'Ladies Wear'},
    {'imageUrl': 'assets/nike.jpg', 'title': 'Nike'},
    {'imageUrl': 'assets/whitetshirt.jpg', 'title': 'White Tee'},
  ];

  final List<Map<String, String>> products = [
    {
      'imageUrl': 'assets/airforce.jpg',
      'name': 'Stylish Shoes',
      'price': '\$49.99',
    },
    {
      'imageUrl': 'assets/ladies.jpg',
      'name': 'Casual Tee',
      'price': '\$19.99',
    },
    {
      'imageUrl': 'assets/nike.jpg',
      'name': 'Elegant Watch',
      'price': '\$99.99',
    },
  ];
  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
              height: 8,
            ),
            HorizontalScrollWithTilt(),
             SizedBox(
              height: 14,
            ),
            TextRow(
              titleText: 'Category',
              actionText: 'See All',
            ),
            SizedBox(
              height: 8,
            ),
            HorizontalCategoryScroller(categories: categories),
            SizedBox(
              height: 18,
            ),
            TextRow(titleText: "Recommend", actionText: "See All"),
            HorizontalProductScroller(products: products)
          ],
        ),
      ),
    );
  }
}
