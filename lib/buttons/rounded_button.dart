import 'package:flutter/material.dart';

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
    padding: EdgeInsets.all(0.0),
    child: Ink(
      decoration: BoxDecoration(
        color: Color(0xFFAB4D24),
          // gradient: const LinearGradient(
          //   colors: [Color(0xffAB4D24), Color(0xffAB4D24)],
          //   begin: Alignment.centerLeft,
          //   end: Alignment.centerRight,
          // ),
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: 200.0, minHeight: 50.0),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            SizedBox(width: 10,),
            Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white,
              fontSize: 15,
            ),
          ),

            // Container(margin: EdgeInsets.only(left: 60),),
            Padding(padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.arrow_forward_outlined,color:Colors.white ,)),
        ]),
      ),
    ),
  );
}