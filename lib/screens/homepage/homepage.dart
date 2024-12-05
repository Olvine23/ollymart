import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ollymart/utils/colors.dart';
import 'package:ollymart/widgets/custom_button.dart';
import 'package:ollymart/widgets/search_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Center(
      child: Text(
        'Home',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Shop',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Search',
        style: optionStyle,
      ),
    ),
    SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Profile content goes here. Make sure to handle large content properly.',
          style: optionStyle,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Padding(
          padding: EdgeInsets.only(left: 12),
          child: CustomButton(
              icon: Icon(
            Icons.notifications_outlined,
          )),
        ),
        title: SearchContainer(),
        // title: Text("sssssssssvvsvssvssbvbssnnsnsnn"),
        actions: const [
           Padding(
            padding: EdgeInsets.only(right: 13),
            child: CustomButton(
                icon: Icon(
              Icons.shopping_bag_outlined,
            )),
          )
        ],
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: GNav(
                gap: 7,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                tabBackgroundColor: AppColors.utilColor,
                activeColor: AppColors.secondaryColor,
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                tabs: [
                  GButton(
                    icon: Icons.home,
                    leading: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: _selectedIndex == 0
                            ? AppColors.accentColor
                            : Colors
                                .white, // Background color for selected icon
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(6),
                      child: Icon(
                        Icons.home,
                        color: _selectedIndex == 0
                            ? Colors.white
                            : Colors.black, // Icon c
                      ),
                    ),
                    text: "Home",
                  ),
                  GButton(
                    icon: Icons.favorite,
                    leading: Container(
                      decoration: BoxDecoration(
                        color: _selectedIndex == 1
                            ? AppColors.accentColor
                            : Colors.white, // Background colo
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(6),
                      child: Icon(
                        Icons.shopify,
                        color: _selectedIndex == 1
                            ? Colors.white
                            : Colors.black, // Icon c
                      ),
                    ),
                    text: "Shop",
                  ),
                  GButton(
                    icon: Icons.search, // Required dummy icon
                    leading: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: _selectedIndex == 2
                            ? AppColors.accentColor
                            : Colors.white, // Background colo
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(6),
                      child: Icon(
                        _selectedIndex == 2
                            ? Icons.favorite
                            : Icons.favorite_outline_outlined,
                        color: _selectedIndex == 2
                            ? Colors.white
                            : Colors.black, // Icon c
                      ),
                    ),
                    text: "Wishlist",
                  ),
                  GButton(
                    icon: Icons.person_2_outlined,
                    leading: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: _selectedIndex == 3
                            ? AppColors.accentColor
                            : Colors.white, // Background colo
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(6),
                      child: Icon(
                        Icons.person_2_outlined,
                        color: _selectedIndex == 3
                            ? Colors.white
                            : Colors.black, // Icon c
                      ),
                    ),
                    text: "Profile",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
