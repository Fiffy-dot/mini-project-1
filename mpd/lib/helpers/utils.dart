import 'package:flutter/material.dart';
import 'package:mpd/models/category.dart';
import '../models/category.dart';
import '../models/category_part.dart';

import '../models/subcategory.dart';


class Utils {
  static List<Category> getCategories() {
    return [
      Category(
          color: Colors.transparent,
          name: "Supermarkets",
          imgName: "SuperMarket",
          subCategories: [
            SubCategory(
              color: Colors.transparent,
              name: "Horebu",
              imgName: "horebu",
              parts: [
                CategoryPart(
                  name: 'Cooking Oil',
                  imgName: 'oil', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Toothbrush', 
                  imgName: 'brush', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Tea Bags', 
                  imgName: 'tea', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Baking Flour', 
                  imgName: 'flour', 
                  isSelected: false, 
                  color: Colors.black,
                  ),    
              ]            
              ),
            SubCategory(
              color: Colors.transparent,
              name: "Simba",
              imgName: "simba", 
              parts: [
                CategoryPart(
                  name: 'Cooking Oil',
                  imgName: 'oil', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Toothbrush', 
                  imgName: 'brush', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Tea Bags', 
                  imgName: 'tea', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Baking Flour', 
                  imgName: 'flour', 
                  isSelected: false, 
                  color: Colors.black,
                  ),   
              ],
               ),
          
          ],),
      Category(
          color: Colors.transparent,
          name: "Clothing Store",
          imgName: "Clothing",
          subCategories: [
            SubCategory(
              color: Colors.transparent,
              name: "Bosini",
              imgName: "bosini", 
              parts: [
                CategoryPart(
                  name: 'Street Pants',
                  imgName: 'bosini4', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Jean Jacket', 
                  imgName: 'bosini3', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'College Jacket', 
                  imgName: 'bosini2', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'White Tee', 
                  imgName: 'bosini1', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
              ],
            ),
            SubCategory(
              color: Colors.transparent,
              name: "Vivo",
              imgName: "vivo", 
              parts: [
                CategoryPart(
                  name: 'Floral Dress',
                  imgName: 'vivo4', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Orange Dress', 
                  imgName: 'vivo3', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Black Swan', 
                  imgName: 'vivo2', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'White Pants', 
                  imgName: 'vivo1', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
              ],
            ),
          ], ),

      Category(
          color: Colors.transparent,
          name: "Home Supplies",
          imgName: "Supplies",
          subCategories: [
            SubCategory(
              color: Colors.transparent,
              name: "Flashy Skin",
              imgName: "charisma", 
              parts: [
                CategoryPart(
                  name: 'Cleanser',
                  imgName: 'C4', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Vitamin C', 
                  imgName: 'C3', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Moisturizer', 
                  imgName: 'C2', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Lotion', 
                  imgName: 'C1', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
              ],
            ),
            SubCategory(
              color: Colors.transparent,
              name: "Furniture Place",
              imgName: "2000", 
              parts: [
                CategoryPart(
                  name: ' Queen Bed',
                  imgName: 'T4', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Reel Chair', 
                  imgName: 'T3', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Pillow', 
                  imgName: 'T2', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Fluffy Chair', 
                  imgName: 'T1', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
              ],
            ),
          ], ),

      Category(
          color: Colors.transparent,
          name: "Restaurants",
          imgName: "restaurant",
          subCategories: [
            SubCategory(
              color: Colors.transparent,
              name: "MAC Kigali",
              imgName: "java", 
              parts: [
                CategoryPart(
                  name: ' Beef Burger',
                  imgName: 'k1', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Cheese Sandwich', 
                  imgName: 'k2', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Vanilla Milkshake', 
                  imgName: 'k3', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Latte', 
                  imgName: 'k4', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
              ],
            ),
            SubCategory(
              color: Colors.transparent,
              name: "Billy's Bistro",
              imgName: "billy", 
              parts: [
                CategoryPart(
                  name: 'Shrimp',
                  imgName: 'b1', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Dressed Steak', 
                  imgName: 'b2', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Fille Mignon', 
                  imgName: 'b3', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
                CategoryPart(
                  name: 'Lasagna', 
                  imgName: 'b4', 
                  isSelected: false, 
                  color: Colors.black,
                  ),
              ],
            ),
          ], ),        
    ];
  }
}
