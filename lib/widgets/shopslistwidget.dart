import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopListWidget extends StatelessWidget {
  const ShopListWidget(
      {Key? key,
      required this.title,
      required this.image,
      required this.colour,
      required this.index})
      : super(key: key);

  // final Color? colour;
  final String title;

  // final VoidCallback onPressed;
  final String image;
  final Color colour;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colour,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12.5),
        ),
      ),
      elevation: 3,
      margin: EdgeInsets.only(
          bottom: 15, right: index == 3 ? 10 : 5, left: index == 0 ? 10 : 5),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(image),
            ),
            Text(
              title,
              textAlign: TextAlign.center,

              style:
                  const TextStyle(fontSize: 11, fontFamily: 'Nuntio-Black.ttf'),
            ),
          ],
        ),
      ),
    );
    // ),
    // );
  }
}
