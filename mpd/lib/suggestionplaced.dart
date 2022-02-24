import 'dart:ui';
import 'package:flutter/material.dart';
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
              height: 200,
              //color: Colors.orange,decoration: BoxDecoration (
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/highFive.png")
                )
              ),
              child: Text("Thanks for your suggestion",
                  style: TextStyle(
                      fontSize: 32, fontWeight: FontWeight.bold)

              ),
            )
          )
      )
    );
  }
}