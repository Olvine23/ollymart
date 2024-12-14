import 'package:flutter/material.dart';

class CategoryPill extends StatelessWidget {
  final String imageUrl;
  final String title;

  const CategoryPill({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        borderRadius: BorderRadius.circular(30), // Rounded corners for the pill shape
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 6,
            offset: Offset(0, 3), // Shadow position
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // Keeps the pill compact
        children: [
          ClipOval(
            child: Image.asset(
              imageUrl,
              height: 40, // Adjust the size
              width: 40,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10), // Spacing between image and text
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
