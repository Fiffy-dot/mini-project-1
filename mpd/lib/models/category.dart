import 'dart:ui';

import 'package:mpd/models/category_part.dart';

class Category {
  String name;
  Color color;
  String imgName;
  List<Category>? subCategories;

  Category(
      {
        required this.name,
        required this.color,
        required this.imgName,
        this.subCategories, 
      }
      );

  get parts => null;
}