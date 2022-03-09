import 'package:crockery_app/constant/constant.dart';
import 'package:flutter/material.dart';

class SquarButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const SquarButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialButton(
    onPressed: onPressed,
    height: 45,
    minWidth: 350,
    color:Constants.kDarkOrangeColor,
    // shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(30.0)),
    //   // borderRadius: BorderRadius.circular(15.0),
    // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    // child: Text(
    //   text,
    //   style: TextStyle(color: Colors.white, fontSize: 16),
    // ),
    // );
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)),
    padding: EdgeInsets.all(0.0),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          SizedBox(width: 10,),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Constants.kWhiteAccent,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),

          // Container(margin: EdgeInsets.only(left: 60),),
          Padding(padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.arrow_forward_outlined,color:Constants.kWhiteAccent,)),
        ]),
  );
}