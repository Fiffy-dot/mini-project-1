import 'package:flutter/cupertino.dart';
import 'category_part.dart';
import 'category.dart';
import 'dart:ui';

class SubCategory extends Category {
  
  List<CategoryPart> parts;

  SubCategory({
    required List<CategoryPart> this.parts,
    required String name,
    required String imgName,
    required Color color,
  }) : super(name: name, imgName: imgName, color: color);
}
