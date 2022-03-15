import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../helper/navigator.dart';

class ShopWidget extends StatefulWidget {
  const ShopWidget({required this.allCateImg, required this.allCateName});

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
      margin: const EdgeInsets.only( bottom:  10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
        Image.asset(
          widget.allCateImg,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Center(
            child: Text(
              widget.allCateName,
              style:
                  const TextStyle(fontSize: 13, fontFamily: 'Nuntio-Light.ttf'),
              // style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ]),
    );
  }
}
