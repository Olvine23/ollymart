import 'package:flutter/material.dart';
import 'dart:math';

import 'package:ollymart/screens/homepage/widgets/image_withbtn.dart';

class HorizontalScrollWithTilt extends StatefulWidget {
  @override
  _HorizontalScrollWithTiltState createState() =>
      _HorizontalScrollWithTiltState();
}

class _HorizontalScrollWithTiltState extends State<HorizontalScrollWithTilt> {
  final PageController _pageController = PageController(viewportFraction: 0.6);

  // List of different image paths
  final List<String> imagePaths = [
    'assets/airforce.jpg',
    'assets/ladies.jpg',
    'assets/nike.jpg',
    'assets/tshirts.jpg',
    'assets/whitetshirt.jpg',
    'assets/airforce.jpg',
    'assets/ladies.jpg',
    'assets/nike.jpg',
    'assets/tshirts.jpg',
    'assets/whitetshirt.jpg',
    'assets/airforce.jpg',
    'assets/ladies.jpg',
    'assets/nike.jpg',
    'assets/tshirts.jpg',
    'assets/whitetshirt.jpg',
     

  ];

    @override
  void initState() {
    super.initState();

    // Scroll to the third item (index 2) when the page is first rendered
    Future.delayed(Duration(milliseconds: 200), () {
      _pageController.animateToPage(
        2, // Third index
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    });
  }


  @override
  Widget build(BuildContext context) {


    return  
     
     SizedBox(
       height: 180, // Height of the image containers
       child: PageView.builder(
         controller: _pageController,
         itemCount: imagePaths.length, // Number of images
         physics: BouncingScrollPhysics(),
         itemBuilder: (context, index) {
           return AnimatedBuilder(
             animation: _pageController,
             builder: (context, child) {
               double value = 0.0;
               if (_pageController.position.haveDimensions) {
                 value = _pageController.page! - index;
                 value = (value * 1.0).clamp(-3.5, 3.5); // Stronger tilt effect
               }
               return Transform(
                 transform: Matrix4.identity()
                   ..setEntry(3, 2, 0.001) // Perspective effect
                   ..rotateY(value), // Apply Y-axis tilt
                 alignment: Alignment.center,
                 child: child,
               );
             },
             child: ImageWithButton(
               imgUrl: imagePaths[index], // Replace with your image path
             ),
           );
         },
       ),
     );
}
}