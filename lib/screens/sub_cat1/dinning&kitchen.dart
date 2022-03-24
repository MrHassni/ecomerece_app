import 'package:crockery_app/widgets/category_widgets/mostpurchased.dart';
import 'package:crockery_app/widgets/slider.dart';
import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import '../home_screen.dart';
import '../../widgets/bottom_navigation/bottom_navigation_bar.dart';
import '../../widgets/category_widgets/shopwidgets.dart';

class DinningKitchenScreen extends StatefulWidget {
  const DinningKitchenScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<DinningKitchenScreen> {
  final List allCatagoriesImg = [
    'images/crockeryimg.png',
    'images/tableimg.png',
    'images/trolleyimg.png',
    'images/book.png',
    'images/giftpic.png',
    'images/decorpic.png',
    'images/diningkitchen.png',
    'images/book.png',
    'images/giftpic.png',
    'images/decorpic.png',
    'images/diningkitchen.png',
    'images/book.png',
  ];
  final List allCategoriesName = [
    'Crockery Shop',
    'Tables Shop',
    'Trolleys & Carts',
    'Lighting',
    'Gift Shop',
    'dinning&Kitchen',
    'Home Decor',
    'Lighting',
    'Gift Shop',
    'dinning&Kitchen',
    'Home Decor',
    'Lighting',
  ];
  final List mostPurchased = [
    'images/study.png',
    'images/emollient.png',
    'images/gupshuptable.png',
    'images/study.png',
    'images/emollient.png',
    'images/gupshuptable.png',
  ];

  bool showSearch = false;

  @override
  Widget build(BuildContext context) {
    // print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Constants.kDarkOrangeColor,
                        )),
                    const Text(
                      'Dinning & Kitchen',
                      style: TextStyle(
                        color: Constants.kBlackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // const SizedBox(
                    //   width: 170,
                    // ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (showSearch == true) {
                            showSearch = false;
                          } else {
                            showSearch = true;
                          }
                          // showSearch ==true;
                        });
                      },
                      child:
                          const Icon(Icons.search, color: Constants.kGreyColor),
                    ),
                     Icon(
                      Icons.doorbell_outlined,
                      color: Constants.kDarkOrangeColor,
                    ),
                     Icon(
                      Icons.shopping_cart,
                      color: Constants.kDarkOrangeColor,
                    ),
                    //  IconTheme(
                    //   data: new IconThemeData(
                    //       color: Colors.red),
                    //   child: new Icon(Icons.add),
                    // ),
                    //for search
                  ],
                ),
              ),

              //for search
              showSearch
                  ? SizedBox(
                      height: 40,
                      width: 350,
                      child: TextFormField(
                        onChanged: (_) {
                          // initiateSearch();
                        },
                        // controller: searchEditingController,
                        decoration: InputDecoration(
                            focusColor: Constants.kDarkOrangeColor,
                            prefixIcon:  Icon(
                              Icons.search,
                              color: Constants.kDarkOrangeColor,
                            ),
                            // border: OutlineInputBorder(
                            //   // width: 0.0 produces a thin "hairline" border
                            //
                            //   borderRadius: BorderRadius.all(Radius.circular(90.0)),
                            //   borderSide: BorderSide(color: Color(0xFFAB4D24), width: 2.0),
                            //   // borderSide: BorderSide.none,
                            //   //borderSide: const BorderSide(),
                            // ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:  BorderSide(
                                  color: Constants.kDarkOrangeColor,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:  BorderSide(
                                  color: Constants.kDarkOrangeColor,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            hintStyle: const TextStyle(
                                color: Constants.kGreyColor,
                                fontFamily: "WorkSansLight"),
                            filled: true,
                            fillColor: Constants.kWhite54Color,
                            hintText: 'Search by name...'),
                      ),
                    )
                  : const SizedBox(
                      height: 40,
                      width: 350,
                      child: Text(
                        'Dinning & Kitchen products Detail',
                        style: TextStyle(
                            color: Constants.kGreyColor, fontSize: 12),
                      ),
                    ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                  child: Text(
                    'Shops Categories',
                    // textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Constants.kBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        fontFamily: 'Nuntio-Bold.ttf'),
                  ),
                ),
              ),

              //All Products call here....
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: ShopWidget(),
              ),
              // SizedBox(height: 10,),
              const HorizontalSlider(),

              //Most Purchased....
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Most Purchased',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Constants.kBlackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          fontFamily: 'Nuntio-Bold.ttf'),
                    ),
                    InkWell(
                      onTap: () {
                      },
                      child:  Text(' View all ',
                          style: TextStyle(
                              color: Constants.kDarkOrangeColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.5,
                              fontFamily: 'Nuntio-Bold.ttf')),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: MostPurchased(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
