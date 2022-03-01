
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopWidget extends StatelessWidget {
  ShopWidget({required this.title,required this.image,required this.colour});
  // final Color? colour;
  final String title;
  // final VoidCallback onPressed;
  final String image;
 final Color colour;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        height: 100,
        width: 100,

        // elevation: 8.0,
        // margin: EdgeInsets.zero,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(30.0),
        // ),
        decoration: BoxDecoration(
          color:colour,
          // border: Border.all(color: Color(0xFFAB4D24),width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 42,
                width: 40,
                child: Image.asset(image),
              ),
              FittedBox(child: Text(title,style: TextStyle(fontSize: 13,fontFamily:'Nuntio-Black.ttf'),)),
            ],
          ),
        ),
      ),
    );
    // ),
    // );

  }
}
