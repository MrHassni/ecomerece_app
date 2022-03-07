
import 'package:crockery_app/buttons/cartbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../helper/navigator.dart';

class ShopWidget extends StatefulWidget {
  ShopWidget({required this.allCateImg, required this.allCateName});
  final String allCateImg;
  final String allCateName;
  @override
  State<ShopWidget> createState() => _ShopWidgetState();
}

class _ShopWidgetState extends State<ShopWidget> {

  // final String pic;
  // Color _favIconColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Card(
margin: EdgeInsets.zero,
      // margin: EdgeInsets.only(left: 20.0,bottom: 20),
      // color: Colors.purple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 7.5,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[
            Image.asset(widget.allCateImg,
              // height: 150.0,
              // width: 100.0,
            ),

            Container(
              // color: Colors.red,
              height: 35,
              width: MediaQuery.of(context).size.width,
              // color: Colors.red,
              child:Center(
                child: Text(widget.allCateName,
                  style: TextStyle(fontSize: 16,fontFamily: 'Nuntio-Light.ttf'),
                  // style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

            ),



          ] ),
    );


  }
}