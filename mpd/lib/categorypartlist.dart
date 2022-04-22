import 'package:flutter/material.dart';
import 'package:mpd/models/category.dart';
import 'package:mpd/models/subcategory.dart';

import 'models/category_part.dart';

class CategoryPartList extends StatefulWidget {
  // get subCategory => null;

  Category? subCategory;

  CategoryPartList({this.subCategory});

  @override
  CategoryPartListState createState() => CategoryPartListState();
}

class CategoryPartListState extends State<CategoryPartList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // ignore: sized_box_for_whitespace
              Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.subCategory!.parts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.subCategory!.parts
                                  .forEach((CategoryPart part) {
                                part.isSelected =
                                    widget.subCategory!.parts[index] == part;
                              });
                            });
                          },
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(15),
                                  width: 130,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      border: widget.subCategory!.parts[index]
                                              .isSelected
                                          ? Border.all(
                                              color: widget.subCategory!.color,
                                              width: 20)
                                          : null,
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage('images/' +
                                              widget.subCategory!.parts[index]
                                                  .imgName +
                                              '.png'),
                                          fit: BoxFit.cover),
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.1),
                                            offset: Offset.zero,
                                            blurRadius: 10)
                                      ]),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: Text(
                                        widget.subCategory!.parts[index].name,
                                        textAlign: TextAlign.left,
                                        // ignore: prefer_const_constructors
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 12,
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ));
                    }),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
