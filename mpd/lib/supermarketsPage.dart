// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:mpd/helpers/utils2.dart';
// import 'package:mpd/models/category.dart';
// import 'package:mpd/models/shops.dart';
// import 'package:mpd/models/subcategory.dart';
// import 'package:mpd/models/supermarkets.dart';

// import 'widget/appbar_widget.dart';
// import 'widget/sidemenu.dart';

// class ShopsPage extends StatelessWidget {
//   Shops? selectedShops;
//   List<Category> categories = Utils2.getCategories();
//   ShopsPage({this.selectedShops});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.greenAccent,
//         endDrawer: MenuDrawer(),
//         appBar: buildAppBar(context),
//         body: Container(
//             child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             const Padding(
//                 padding: EdgeInsets.all(10),
//                 child: Text(
//                   'Supermarkets',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//                 )),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: supermarkets.length,
//                 itemBuilder: (BuildContext ctx, int index) {
//                   return ShopCard(
//                       // shops: supermarkets[index],
//                       onCardClick: () {
//                         var shopCategory;
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => ShopsPage(
//                                    shops: this.selectedShops[index])));
//                       });
//                 },
//               ),
//             ),
//             Align(
//               alignment: Alignment.topRight,
//               child: MaterialButton(
//                   minWidth: 15,
//                   height: 40,
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => SuggestPlacePage()));
//                   },
//                   color: Colors.black,
//                   elevation: 10,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(50)),
//                   child: Text("Suggest a place",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                         color: Colors.white,
//                       ))),
//             )
//           ],
//         )));
//   }

//   // ShopsPage({required shopCategory}) {}
// }
