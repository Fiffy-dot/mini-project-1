import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnitPriceWidget extends StatefulWidget {


  int amount = 0;
  double price = 15.0;
  double cost = 0.0;

  @override
  UnitPriceWidgetState createState() => UnitPriceWidgetState();
}

class UnitPriceWidgetState extends State<UnitPriceWidget> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(20),
              child: Text.rich(TextSpan(children: [
                TextSpan(text: ''),
                TextSpan(
                    text: 'Total Items Added',
                    style: TextStyle(
                        fontWeight: FontWeight.bold)),
                // TextSpan(
                //     text: '(max. 20)',
                //     style: TextStyle(fontSize: 12))
              ]))),
          Container(
            child: Container(
              padding: EdgeInsets.all(8),
              // padding: EdgeInsets.only(bottom: 10),
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        offset: Offset.zero,
                        color: Colors.black.withOpacity(0.1))
                  ]),
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // GestureDetector(
                  //   onTap: widget.amount < 20 ? () {
                  //     setState(() {
                  //       widget.amount++;
                  //       widget.cost = widget.price * widget.amount;
                  //     });
                  //   } : null,
                  //   child: Icon(
                  //     Icons.add_circle_outline,
                  //     size: 50,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  Expanded(
                      flex: 1,
                      child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10),
                          child: Center(
                            child:
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: widget.amount
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white70)),
                              TextSpan(
                                  text: 'items',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white54))
                            ])),
                          ))),
                  // GestureDetector(
                  //   onTap: widget.amount > 0 ?() {
                  //     setState(() {
                  //       widget.amount--;
                  //       widget.cost = widget.price * widget.amount;
                  //     });
                  //   } : null,
                  //   child: Icon(Icons.remove_circle_outline,
                  //       size: 50, color: Colors.grey),
                  // )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 10, right: 20, left: 20, bottom: 10),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                    TextSpan(children: [
                      // TextSpan(
                      //     text: 'Total',
                      //     style: TextStyle(
                      //         color: Colors.black,
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 15)),
                      // TextSpan(
                      //   text: '\$${widget.price}/ item',
                      //   style: TextStyle(
                      //       color: Colors.black,
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 15),
                      // )
                    ])
                ),
                Text('Total ' + '${widget.cost} RWF',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20))
              ],
            ),
          )
        ],
      ),
    );
  }
}
