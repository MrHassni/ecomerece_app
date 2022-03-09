import 'package:crockery_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../helper/navigator.dart';
import 'buttons/cartbutton.dart';

class FeaturedProducts extends StatefulWidget {
  final int index;

  const FeaturedProducts({Key? key, required this.index}) : super(key: key);

  @override
  State<FeaturedProducts> createState() => _FeaturedProductsState();
}

class _FeaturedProductsState extends State<FeaturedProducts> {
  Color _favIconColor = Constants.kWhiteAccent;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(
         bottom: 15, right: widget.index == 4 ? 10 : 5, left: widget.index == 0 ? 10 : 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      child: SizedBox(
        width: 150,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
            Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.asset(
                  'images/opaldinner.png',
                  height: 100,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
              InkWell(
                child: Icon(
                  Icons.favorite_border,
                  color: _favIconColor,
                ),
                onTap: () {
                  print('favorite icon clicked...');

                  if (_favIconColor == Constants.kWhiteAccent) {
                    setState(() {
                      _favIconColor = Constants.kRedColor;
                    });
                  } else {
                    setState(() {
                      _favIconColor = Constants.kWhiteAccent;
                    });
                  }
                },
              ),
            ],
          ),
          Container(
            width: 150,
            padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Opal Dinner Set',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '500 gm',
                    style: TextStyle(fontSize: 12, color: Constants.kGreyColor),
                  ),
                  Text(
                    'Rs 300',
                    style: TextStyle(fontSize: 12, color: Constants.kGreyColor),
                  ),
                ]),
          ),
          CartButton(text: 'Add to Cart', onPressed: () {}),
        ]),
      ),
    );
  }
}
