import 'dart:developer';

import 'package:crockery_app/constant/constant.dart';
import 'package:flutter/material.dart';


class MostPurchased extends StatefulWidget {
  const MostPurchased({Key? key,required this.mostPurchasedImg,}) : super(key: key);
  final String mostPurchasedImg;

  @override
  State<MostPurchased> createState() => _MostPurchasedState();
}

class _MostPurchasedState extends State<MostPurchased> {
  // final String pic;
  bool _fav = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  widget.mostPurchasedImg,
                  height: 80,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  child: InkWell(
                    child: Icon(
                      _fav ? Icons.favorite : Icons.favorite_border,
                      color: _fav ? Colors.red : Colors.black,
                    ),
                    onTap: () {
                      log('favorite icon clicked...');
                      if (_fav == true) {
                        setState(() {
                          _fav = false;
                        });
                      } else {
                        setState(() {
                          _fav = true;
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Opal Dinner Set',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '500 gm          ',
                        style: TextStyle(
                            fontSize: 12, color: Constants.kGreyColor),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Rs 300          ',
                        style: TextStyle(
                            fontSize: 12, color: Constants.kGreyColor),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: 30,
              width: 125,
              child: MaterialButton(
                  child: Text('Add to Cart',style: const TextStyle(fontSize: 12),),
                  color: Constants.kDarkOrangeColor,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  onPressed: () {}),
            ),
          ]),
    );
  }
}
