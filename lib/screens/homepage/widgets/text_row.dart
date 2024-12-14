import 'package:flutter/material.dart';
import 'package:ollymart/utils/colors.dart';

class TextRow extends StatelessWidget {
  final String titleText;
  final String actionText;
  const TextRow({super.key, required this.titleText, required this.actionText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleText,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            actionText,
            style: TextStyle(fontSize: 14, color: AppColors.accentColor),
          )
        ],
      ),
    );
  }
}
