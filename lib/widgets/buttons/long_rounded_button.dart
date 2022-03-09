import 'package:crockery_app/constant/constant.dart';
import 'package:flutter/material.dart';

class LongRoundButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const LongRoundButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialButton(
    onPressed: onPressed,
    height: 35,
    minWidth: 300,
    color:Constants.kDarkOrangeColor ,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0)),
    padding: const EdgeInsets.all(0.0),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          const SizedBox(width: 10,),
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
          const Padding(padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.arrow_forward_outlined,color:Constants.kWhiteAccent,)),
        ]),
  );
}