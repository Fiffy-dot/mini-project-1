// ignore_for_file: unnecessary_this
import 'package:flutter/material.dart';
import 'package:mpd/models/category.dart';
import 'package:mpd/shoplist.dart';
import 'package:mpd/widget/appbar_widget.dart';
import 'package:mpd/widget/sidemenu.dart';


class SelectedCategoryPage extends StatelessWidget {
    Category? selectedCategory;

  // SubCategory subCategories;

  SelectedCategoryPage({ required this.selectedCategory });

  get categories => null;

  get shops => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        endDrawer: MenuDrawer(),
        appBar: buildAppBar(context),
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Shop Around',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 1,
                    children: List.generate(
                        this.selectedCategory!.subCategories!.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ShopList(
                                  subCategory: this.selectedCategory!.subCategories![index],
                                ))
                              );
                        },
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          height: 50,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                          'images/' +
                                              // ignore: unnecessary_this
                                              this
                                                  .selectedCategory!
                                                  .subCategories![index]
                                                  .imgName +
                                              '.png',
                                          fit: BoxFit.cover))),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 1500,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20),
                                      // borderRadius: const BorderRadius.only(
                                      //     bottomLeft: Radius.circular(20),
                                      //     topLeft: Radius.circular(20),
                                      //     topRight: Radius.circular(20),
                                      //     bottomRight: Radius.circular(20)),
                                      gradient: LinearGradient(
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                          colors: [
                                            Colors.black.withOpacity(0.7),
                                            Colors.transparent,
                                          ])),
                                ),
                              ),

                              Positioned(
                                  bottom: 0,
                                  child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(children: [
                                        const SizedBox(width: 80),
                                        Text(
                                          this
                                              .selectedCategory!
                                              .subCategories![index]
                                              .name,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              overflow: TextOverflow.ellipsis),
                                        )
                                      ]))),
                              const SizedBox(
                                height: 30,
                              ),
                              // Text(this.selectedCategory.subCategories![index].name,
                              //     style:
                              //         TextStyle(color: this.selectedCategory.color))

                              // Positioned(
                              //     bottom: 0,
                              //     left: 0,
                              //     right: 0,
                              //     child: ClipOval(
                              //       child: Container(
                              //       height: 120,
                              //       decoration: BoxDecoration(
                              //           borderRadius: const BorderRadius.only(
                              //               bottomLeft: Radius.circular(20),
                              //               bottomRight: Radius.circular(20)),
                              //           gradient: LinearGradient(
                              //               begin: Alignment.bottomCenter,
                              //               end: Alignment.topCenter,
                              //               colors: [
                              //                 Colors.black.withOpacity(0.7),
                              //                 Colors.transparent
                              //               ])),
                              //     ),
                              //     )
                              //   ),
                            ],
                          ),
                          // child: Column(
                        ),
                      );
                      // );
                    }),
                  ),
                )
              ]),
        ));
  }

  SupermarketsPage({required subCategory}) {}
}

ShopsPage({required List<Category> shopsPage}) {
}
