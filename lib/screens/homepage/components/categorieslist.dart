import 'package:flutter/material.dart';
import 'package:ollymart/screens/homepage/widgets/pill_category.dart';

class HorizontalCategoryScroller extends StatelessWidget {
  final List<Map<String, String>> categories;

  const HorizontalCategoryScroller({Key? key, required this.categories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55, // Height for the scrolling container
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Enable horizontal scrolling
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CategoryPill(
              imageUrl: category['imageUrl']!,
              title: category['title']!,
            ),
          );
        },
      ),
    );
  }
}