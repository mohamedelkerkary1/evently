import 'package:evently_7/core/theme_manager/color_pallate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/categoryData.dart';

class TabItemWidget extends StatelessWidget {
  final CategoryData categoryData;
  final bool isSelected;

  TabItemWidget({required this.categoryData, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(color: ColorPallate.primaryColor),
      ),
      child: Row(
        children: [
          Icon(
            Icons.menu_book_outlined,
            color: isSelected ? ColorPallate.primaryColor : Colors.white,
          ),
          SizedBox(width: 8),
          Text(
            categoryData.categoryTitle,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: isSelected ? ColorPallate.primaryColor : Colors.white,
            ),
          )
          
        ],
      ),
    );
  }
}
