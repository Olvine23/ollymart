import 'package:flutter/material.dart';
import 'package:ollymart/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final Icon icon; 
  const CustomButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white
      ),
       padding: const EdgeInsets.all(6),
       
      child: icon,
    );
  }
}