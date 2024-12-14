import 'package:flutter/material.dart';
import 'package:ollymart/utils/colors.dart';

class ImageWithButton extends StatelessWidget {
  final String imgUrl;

  const ImageWithButton({super.key, required this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Image Container
          Container(
            width: 320,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imgUrl), // Replace with your image path
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 5),
                ),
              ],
            ),
          ),
          // Shop Now Button
          Positioned(
            bottom: 15,
           child: ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  ),
  onPressed: () {
    // Button action here
  },
  child: Row(
    mainAxisSize: MainAxisSize.min, // Adjusts button width to fit content
    children: [
      Text(
        "Shop Now",
        style: TextStyle(color: AppColors.accentColor),
      ),
      SizedBox(width: 8.0), // Space between text and icon
      CircleAvatar(
        backgroundColor: AppColors.accentColor,
        child: Transform.rotate(
          angle: -0.785, // Rotation angle in radians (-45 degrees)
          child: Icon(
            Icons.arrow_forward,
            size: 24.0,
            color: Colors.white,
          ),
        ),
      ),
    ],
  ),
),

          ),
        ],
      ),
    );
  }
}
