
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';


class ProductListImageAndColor extends StatefulWidget {
  ProductListImageAndColor({required this.allProductImg,
    required this.allProdctName
  });
  final String allProductImg;
  final String allProdctName;
  @override
  State<ProductListImageAndColor> createState() => _ProductListImageAndColorState();
}

class _ProductListImageAndColorState extends State<ProductListImageAndColor> {

  // final String pic;
  // Color _favIconColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10,bottom: 5,top: 10),
              child: Image.asset(widget.allProductImg,
                height: 60.0,
                width: 60.0,
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 10),
              // color: Colors.red,
              height: 19,
              width: 60,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                color: Colors.grey.shade300,
              ),
              // width: MediaQuery.of(context).size.width,
              // color: Colors.red,
              child:Center(
                child: Text(widget.allProdctName,
                  style: TextStyle(fontSize: 12),
                  // style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

            ),


          ] ),
    );



  }
}