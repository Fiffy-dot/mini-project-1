import 'package:flutter/cupertino.dart';

class CategoryPart {
  String name;
  Color? color;
  String imgName;
  bool isSelected = false;

  CategoryPart(
      {
        required this.name, 
        required this.imgName, 
        required this.isSelected,
         this.color,
        });
}
