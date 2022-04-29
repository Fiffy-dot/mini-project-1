// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpd/categorypartlist.dart';
import 'package:mpd/helpers/utils2.dart';
import 'package:mpd/models/category.dart';
import 'package:mpd/models/category_part.dart';
import 'package:mpd/models/subcategory.dart';
import 'package:mpd/unitpricewidget.dart';

import 'widget/appbar_widget.dart';
import 'widget/sidemenu.dart';

class ShopList extends StatefulWidget {
  Category? subCategory;

  ShopList({this.subCategory});

  int amount = 0;
  double price = 15.0;
  double cost = 0.0;

  get selectedCategory => null;

  @override
  ShopListState createState() => ShopListState();
}

class ShopListState extends State<ShopList> {
  get image => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        endDrawer: MenuDrawer(),
        appBar: buildAppBar(context),
        body: Container(
          // padding: EdgeInsets.only(bottom: 10),
          alignment: Alignment.center,
          child: Column(children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    // bottomRight: Radius.circular(20)
                    ),
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/' +
                                  widget.subCategory!.imgName +
                                  '.png'),
                              fit: BoxFit.cover)),
                    ),
                    Positioned.fill(
                        child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                            Colors.black.withOpacity(1),
                            Colors.transparent
                          ])),
                    )),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.all(50),
                                child: Text(
                                  widget.subCategory!.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ])
                          ],
                        )),
                    // Positioned(
                    //     right: 20,
                    //     top: 50,
                    //     child: Container(
                    //         // ignore: prefer_const_constructors
                    //         padding: EdgeInsets.only(
                    //             top: 5, left: 15, right: 15, bottom: 5),
                    //         // ignore: prefer_const_constructors
                    //         decoration: BoxDecoration(
                    //             color: Colors.red,
                    //             borderRadius: BorderRadius.circular(20),
                    //             boxShadow: [
                    //               BoxShadow(
                    //                   color: Colors.black.withOpacity(0.8))
                    //             ]),
                    //         child: Row(
                    //           children: const [
                    //             Text(
                    //               '3',
                    //               style: TextStyle(
                    //                 color: Colors.white,
                    //                 fontSize: 20,
                    //               ),
                    //             ),
                    //             Icon(Icons.shopping_cart,
                    //                 color: Colors.white, size: 20)
                    //           ],
                    //         )))
                  ],
                )),
            Expanded(
                flex: 1,
                child: ListView(
                  // child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Text(
                          'Products',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      CategoryPartList(
                        subCategory: widget.subCategory,
                      ),
                      UnitPriceWidget(
                        
                      ),
                  //     Container(
                  //       margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  //       child: ClipRRect(
                  //         borderRadius: BorderRadius.circular(50),
                  //         child: Material(
                    
                  //   // onPressed: () {
                  //   //   Navigator.push(context, MaterialPageRoute(builder : (context) => LoginPage()));
                  //   // },

                  //   shape: RoundedRectangleBorder(
                  //       side: BorderSide(
                  //           color: Colors.black
                  //       ),
                  //       borderRadius: BorderRadius.circular(50)
                  //   ),
                  //   child: Text(
                  //       "Buy",
                  //       style: TextStyle(
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 12,
                  //           color: Colors.blueAccent
                  //       )
                  //   ),

                  // ),
                  //       ),
                  //     )
                    ],
                  ),
                )
          ]),
        ));
  }
}
