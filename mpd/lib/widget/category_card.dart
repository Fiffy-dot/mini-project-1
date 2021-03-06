import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpd/models/category.dart';

class CategoryCard extends StatelessWidget {
  Category category;
  Function onCardClick;
  
  CategoryCard({required this.category, required this.onCardClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.onCardClick();
      },
      child: Container(
        margin: const EdgeInsets.all(20),
        height: 150,
        child: Stack(
          children: [
            Positioned.fill(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                        'images/' +
                            // ignore: unnecessary_this
                            this.category.imgName +
                            '.png',
                        fit: BoxFit.cover))),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.transparent
                        ])),
              ),
            ),
            Positioned(
                bottom: 0,
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(children: [
                      const SizedBox(width: 10),
                      Text(
                        this.category.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      )
                    ])))
          ],
        ),
      ),
    );
  }
}
