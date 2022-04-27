// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:mpd/horebuSupermarket.dart';
// import 'package:mpd/selectedcategorypage.dart';
import 'package:mpd/widget/appbar_widget.dart';
import 'package:mpd/widget/sidemenu.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FavoritesPage(),
  ));
}

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        endDrawer: MenuDrawer(),
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.greenAccent,
        // ),
        appBar: buildAppBar(context),
        body: SafeArea(
            child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Favourites",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '',
                      ),
                    ),
                    Expanded(
                        child: ListView(
                            scrollDirection: Axis.vertical,
                            children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height / 1.8,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("images/horebu.png"))),
                            child: Text("\n\n\n\n\n\nHorebu",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    overflow: TextOverflow.ellipsis)),
                          ),
                          const SizedBox(height: 20),
                          // main page picture
                          Container(
                            height: MediaQuery.of(context).size.height / 1.8,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("images/mac.png"))),
                              child: Text("\n\n\n\n\n\nMac",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      overflow: TextOverflow.ellipsis))
                          ),
                          const SizedBox(height: 20),
                          // main page picture
                          Container(
                            height: MediaQuery.of(context).size.height / 1.8,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("images/simba.png"))),
                              child: Text("\n\n\n\n\n\nSimba",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      overflow: TextOverflow.ellipsis))
                          ),
                          const SizedBox(height: 20),
                          // main page picture
                          Container(
                            height: MediaQuery.of(context).size.height / 1.8,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("images/donuts.png"))),
                              child: Text("\n\n\n\n\n\nRiders",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      overflow: TextOverflow.ellipsis))
                          ),
                           const SizedBox(height: 20),
                        ]))
                    // main page picture
                  ],
                ))));
  }
}
