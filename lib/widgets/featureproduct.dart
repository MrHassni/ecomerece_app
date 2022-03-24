import 'dart:developer';

import 'package:crockery_app/constant/constant.dart';
import 'package:crockery_app/providers/cart_provider.dart';
import 'package:crockery_app/shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bottom_navigation/bottom_navigation_bar.dart';
import 'buttons/cartbutton.dart';

class FeaturedProducts extends StatefulWidget {

  const FeaturedProducts({Key? key}) : super(key: key);

  @override
  State<FeaturedProducts> createState() => _FeaturedProductsState();
}

class _FeaturedProductsState extends State<FeaturedProducts> {
  Color _favIconColor = Constants.kWhiteAccent;
  List<String> list =[];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: ListView.builder(
        shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>  BottomNavigate(i: 9,)),
                );
              },
              child: Card(
                margin: EdgeInsets.only(
                    bottom: 15,
                    right: index == 4 ? 10 : 5,
                    left: index == 0 ? 10 : 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                child: SizedBox(
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
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
                      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Opal Dinner Set',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '500 gm',
                              style: TextStyle(
                                  fontSize: 12, color: Constants.kGreyColor),
                            ),
                            Text(
                              'Rs 300',
                              style: TextStyle(
                                  fontSize: 12, color: Constants.kGreyColor),
                            ),
                          ]),
                    ),
                    CartButton(text: 'Add to Cart', onPressed: () async {
                      list.add('12345');
                      // SharedPreferencesFunctions.saveProductIDsSharedPreference(list);
                      // Provider.of<CartProvider>(context,listen: false).addProductToCart();
                      // var s = await SharedPreferencesFunctions.getProductIDsSharedPreference();
                      // log(s.toString());

                    }),
                  ]),
                ),
              ),
            )
            ;
          }),
    );
  }
}
