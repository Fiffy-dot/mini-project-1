// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Sign Up!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox (
                    height: 20
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  inputFile(label: "Username"),
                  inputFile(label: "Email"),
                  inputFile(label: "Password", obscureText: true),

                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 30, left: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )
                ),
                child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {},
                    color: Colors.black,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                        "Create Account", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    )
                    )

                ),
              )
            ],
          )
        )
      )
    );
  }
}

Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
          label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          )
      ),
      SizedBox(
        height:20,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black
              ),
            )
        ),
      ),
      SizedBox(
          height:12
      )
    ],
  );
}

