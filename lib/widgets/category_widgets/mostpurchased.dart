import 'dart:developer';

import 'package:crockery_app/constant/constant.dart';
import 'package:flutter/material.dart';


class MostPurchased extends StatefulWidget {
  const MostPurchased({Key? key}) : super(key: key);

  @override
  State<MostPurchased> createState() => _MostPurchasedState();
}

class _MostPurchasedState extends State<MostPurchased> {
  final List mostPurchased = [
    'images/study.png',
    'images/emollient.png',
    'images/gupshuptable.png',
    'images/study.png',
    'images/emollient.png',
    'images/gupshuptable.png',
  ];
  bool _fav = false;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        childAspectRatio: 4/4.75,
        physics: const NeverScrollableScrollPhysics(),
    scrollDirection: Axis.vertical,
    crossAxisCount: 2,
    children: List.generate(3, (index) {
      return InkWell(
        onTap: (){},
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Image.asset(
                        mostPurchased[index],
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
                        child: const Text('Add to Cart',style: TextStyle(fontSize: 12),),
                        color: Constants.kDarkOrangeColor,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        onPressed: () {}),
                  ),
                ]),
          ),
        ),
      );},)
    );
  }
}
