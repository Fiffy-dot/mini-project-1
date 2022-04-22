// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mpd/helpers/utils3.dart';
// import 'package:mpd/SelectedCategoryPage.dart';
import 'package:mpd/home.dart';
import 'package:mpd/selectedcategorypage.dart';
import 'package:mpd/suggestplace.dart';
import 'package:mpd/widget/appbar_widget.dart';
import 'package:mpd/widget/category_card.dart';
import 'package:mpd/widget/sidemenu.dart';


import 'helpers/utils.dart';
import 'models/category.dart';

class CategoryList extends StatelessWidget {
  List<Category> categories = Utils.getCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        endDrawer: MenuDrawer(),
        appBar: buildAppBar(context),
        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children: [
            const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'What are you looking for today?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                )),
            Expanded(
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return CategoryCard(
                      category: categories[index],
                      onCardClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectedCategoryPage(
                                  selectedCategory: this.categories[index])
                                ));
                      });
                },
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: MaterialButton(
                  minWidth: 15,
                  height: 40,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SuggestPlacePage()));
                  },
                  color: Colors.black,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Text("Suggest a place",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ))),
            )
          ],
        )));
  }
}
