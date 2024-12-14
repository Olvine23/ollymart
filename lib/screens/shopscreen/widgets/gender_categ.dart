import 'package:flutter/material.dart';
import 'package:ollymart/utils/colors.dart';

class GenderSelection extends StatefulWidget {
  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: AppColors.accentColor)),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       
        children: [
          genderOption("Men"),
          SizedBox(width: 4,),
          genderOption("Women"),
          SizedBox(width: 4,),
          
          genderOption("Everything"),
        ],
      ),
    );
      
  }

  Widget genderOption(String option) {
    bool isSelected = selectedOption == option;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = option;
        });
      },
      child: Container(
        
        decoration: BoxDecoration(
          color: isSelected ? AppColors.accentColor : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? AppColors.accentColor : Colors.white,
          ),
        ),
        child: Padding(

          padding: const EdgeInsets.symmetric(horizontal:20, vertical: 4),
          child: Text(
            
            option,
            style: TextStyle(
              
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}