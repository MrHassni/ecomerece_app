import 'package:flutter/material.dart';

import '../../constant/constant.dart';


class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialButton(
    onPressed: onPressed,
    // color: Color(0xffAB4D24),
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
        borderRadius: BorderRadius.circular(30.0)),
    height: 50,

    color: Constants.kDarkOrangeColor,
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
          fontSize: 18,
        ),
      ),

        // Container(margin: EdgeInsets.only(left: 60),),
        Padding(padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.arrow_forward_outlined,color:Constants.kWhiteAccent,)),
    ]),
  );
}