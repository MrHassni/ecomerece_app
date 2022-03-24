import 'package:crockery_app/constant/constant.dart';
import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CartButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialButton(
    onPressed: onPressed,
    color: Constants.kDarkOrangeColor,
    height: 30,
    minWidth: 110,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0)),
    child: Text(
       text,
       textAlign: TextAlign.center,
       style: const TextStyle(
         color: Constants.kWhiteAccent,
         fontSize: 10,
       ),
     ),
  );
}