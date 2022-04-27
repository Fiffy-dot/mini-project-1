import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mpd/categorylist.dart';

// import 'main.dart';
class SuggestionPlacedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.transparent,
      body:
      BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child:
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 20,
              child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("images/highFive.png"),
                      Text("Thanks for your suggestion",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold)),
                      MaterialButton(
                        padding: EdgeInsets.all(5),
                        minWidth: double.infinity,
                        height:30,
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder : (context) => CategoryList()));
                        },

                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.black
                            ),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text(
                            "Back to category page",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white
                            )
                        ),

                      )
                    ],

                  ),
              )

            )
          )
      )
    );
  }
}