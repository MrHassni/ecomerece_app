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

    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0)),
    padding: EdgeInsets.all(0.0),
    child: Ink(
      decoration: BoxDecoration(
          color: Color(0xFFAB4D24),

          borderRadius: BorderRadius.circular(30.0)
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: 100.0, minHeight: 20.0),
        alignment: Alignment.center,

             child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),

              // Container(margin: EdgeInsets.only(left: 60),),
              // Padding(padding: EdgeInsets.only(right: 10),
              //     child: Icon(Icons.arrow_forward_outlined,color:Colors.white ,)),

      ),
    ),
  );
}