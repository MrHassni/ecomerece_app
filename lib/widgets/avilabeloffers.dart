import 'dart:developer';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../helper/navigator.dart';
import 'buttons/cartbutton.dart';

class AvailabelOffers extends StatefulWidget {

  const AvailabelOffers(
      {Key? key})
      : super(key: key);

  @override
  State<AvailabelOffers> createState() => _AvailabelOffersState();
}

class _AvailabelOffersState extends State<AvailabelOffers> {
  // final String pic;
  bool _fav = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 265,
      child: ListView.builder(
        shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.only(
                  bottom: 15,
                  right: index == 5 - 1 ? 10 : 5,
                  left: index == 0 ? 10 : 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 5,
              child: SizedBox(
                width: 230,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                  Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                        child: Image.asset(
                          'images/avilabelofferimg.png',
                          height: 100,
                          width: 230,
                        ),
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              _fav ? Icons.favorite : Icons.favorite_border,
                              color: _fav ? Colors.red : Colors.white,
                            ),
                          ),
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
                      Container(
                        margin: const EdgeInsets.only(
                          top: 20,
                        ),

                        height: 30.0,
                        width: 80.0,
                        // width: MediaQuery.of( NavigationService.navigatorKey.currentContext!,).size.width*0.3,
                        decoration: const BoxDecoration(
                          // color: Colors.deepOrange,
                          image: DecorationImage(
                            image: AssetImage("images/offbuttonimg.png"),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'upto 60% Off',
                            style: TextStyle(
                              fontSize: 10,
                              color: Constants.kWhiteAccent,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 60, left: 7),
                        height: 20.0,
                        width: 55.0,
                        decoration: const BoxDecoration(
                          color: Constants.kWhiteAccent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.access_time_outlined,
                              color: Constants.kBlackColor,
                              size: 14,
                            ),
                            Text(
                              '30 min',
                              style:
                              TextStyle(
                                  color: Constants.kBlackColor, fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Dinning Set',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              //SizedBox(width: MediaQuery.of( NavigationService.navigatorKey.currentContext!,).size.width*0.3),
                              const Spacer(),
                              Container(
                                padding:
                                const EdgeInsets.only(top: 3, bottom: 3, left: 4),
                                height: 22.0,
                                width: 45.0,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12.0),
                                  ),
                                ),
                                child: Row(
                                  children: const [
                                    FittedBox(
                                        child: Text(
                                          '5.0',
                                          style: TextStyle(
                                              color: Constants.kWhiteAccent),
                                        )),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.star_outlined,
                                      color: Constants.kWhiteAccent,
                                      size: 16,
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          '200mg',
                          style: TextStyle(
                              color: Constants.kGreyColor, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Rs100',
                                style: TextStyle(
                                    color: Constants.kDarkOrangeColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                '200',
                                style: TextStyle(
                                  color: Constants.kGreyColor,
                                  fontSize: 13,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: CartButton(
                        onPressed: () {},
                        text: 'Add to cart',
                      ),
                    ),
                  ),
                ]),
              ),
            );
          }),
    );
  }
}
