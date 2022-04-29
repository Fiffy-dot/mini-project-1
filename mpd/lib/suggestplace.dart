// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpd/suggestionplaced.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


class SuggestPlacePage extends StatelessWidget {
  //const SuggestPlacePage({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController itemsController = TextEditingController();
  TextEditingController tagsController = TextEditingController();
  TextEditingController reasonController = TextEditingController();
  TextEditingController ratingController = TextEditingController();
  TextEditingController commentController = TextEditingController();
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.greenAccent,
        ),
        body: FutureBuilder(
            future: _initializeFirebase(),
            builder: (context, snapshot){
              if (snapshot.connectionState == ConnectionState.done){
                return Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "Suggest a place",
                                      style: TextStyle(
                                          fontSize: 32, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                        "Fill this form with the necessary details and the place mentioned will be added and reviewed within a week",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                        ))
                                  ],
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                                  child: Column(
                                    children: <Widget>[
                                      inputFile(
                                          label: "Name of the Place", hint: "eg. Nairobi", controller: nameController),
                                      inputFile(
                                          label: "Location",
                                          hint: "eg.kimironko",
                                          controller: locationController),
                                      inputFile(
                                          label: "Items available here",
                                          hint: "eg.foodstuffs,vegetables",
                                          controller: itemsController),
                                      inputFile(
                                          label: "Appropriate tags",
                                          hint: "eg.groceries,beauty",
                                          controller: tagsController),
                                      inputFile(
                                          label: "Why is it beneficial to the community?",
                                          hint: "eg. has affordable stuff",
                                          controller: reasonController),
                                      inputFile(
                                          label: "Your initial rating", hint: "eg. 1", controller: ratingController),
                                      inputFile(label: "Additional comments", controller: commentController)
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 40),
                                  child: Container(
                                    padding: EdgeInsets.only(top: 0, left: 0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border(
                                          bottom: BorderSide(color: Colors.black),
                                          top: BorderSide(color: Colors.black),
                                          left: BorderSide(color: Colors.black),
                                          right: BorderSide(color: Colors.black),
                                        )),
                                    child: MaterialButton(
                                        minWidth: double.infinity,
                                        height: 60,
                                        onPressed: () async {
                                            final collection = FirebaseFirestore.instance.collection('suggestions');
                                            await collection.doc().set({
                                              'Name': nameController.text,
                                              'Location': locationController.text,
                                              'Items': itemsController.text,
                                              'Tags': tagsController.text,
                                              'Reason': reasonController.text,
                                              'Rating': ratingController.text,
                                              'Comment': commentController.text
                                            });

                                            print("Button pressed");
                                            showCupertinoModalPopup(
                                                context: context,
                                                builder: (context) => SuggestionPlacedPage());

                                        },
                                        color: Colors.black,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(50)),
                                        child: Text("Submit suggestion",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ))),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )));
              }
              return Center(child: Text("Hi"));
            }
        )
    );
  }
}

Widget inputFile({label, obscureText = false, hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          )),
      SizedBox(
        height: 20,
      ),
      TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            filled: true,
            fillColor: Colors.white,
            hintText: hint,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            )),
      ),
      SizedBox(height: 12)
    ],
  );
}


