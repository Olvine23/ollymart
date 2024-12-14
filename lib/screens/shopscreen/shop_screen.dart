import 'package:flutter/material.dart';
 
import 'package:ollymart/screens/homepage/widgets/text_row.dart';
import 'package:ollymart/screens/shopscreen/widgets/gender_categ.dart';
import 'package:ollymart/screens/shopscreen/widgets/product_card.dart';
import 'package:ollymart/screens/shopscreen/widgets/product_grid.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(
              height: 14,
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: GenderSelection(),
          ),
           SizedBox(
              height: 8,
            ),
            TextRow(titleText: "Recommended Styles", actionText: "Sort By"),
         ProductGridDemo()
        ],
      ),
    );
  }
}