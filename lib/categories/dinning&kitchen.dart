import 'package:crockery_app/widgets/mostpurchased.dart';
import 'package:crockery_app/widgets/slider.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../screens/home_screen.dart';
import '../widgets/bottom_navigation/bottom_sheet.dart';
import '../widgets/shopwidgets.dart';

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
                    const Icon(
                      Icons.doorbell_outlined,
                      color: Constants.kDarkOrangeColor,
                    ),
                    const Icon(
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
                            prefixIcon: const Icon(
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
                              borderSide: const BorderSide(
                                  color: Constants.kDarkOrangeColor,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
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
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: GridView.count(
                  shrinkWrap: true,
                  childAspectRatio: 8.5 / 7,
                  crossAxisSpacing: 10.0,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  children: List.generate(3, (index) {
                    return InkWell(
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavigate(
                                i: 9,
                              ),
                            ),
                          );
                        } else if (index == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavigate(
                                i: 10,
                              ),
                            ),
                          );
                        } else if (index == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavigate(
                                i: 11,
                              ),
                            ),
                          );
                        } else if (index == 1) {
                        } else {
                          print('invalid');
                        }
                      },
                      child: ShopWidget(
                        allCateImg: allCatagoriesImg[index],
                        allCateName: allCategoriesName[index],
                      ),
                    );
                  }),
                ),
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
                      child: const Text(' View all ',
                          style: TextStyle(
                              color: Constants.kDarkOrangeColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.5,
                              fontFamily: 'Nuntio-Bold.ttf')),
                    ),
                  ],
                ),
              ),
              GridView.count(
                childAspectRatio: 4 / 4.5,
                crossAxisSpacing: 2.0,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                // scrollDirection: Axis.horizontal,
                // padding: EdgeInsets.all(10.0),
                scrollDirection: Axis.vertical,
                // padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                crossAxisCount: 2,
                children: List.generate(6, (index) {
                  return InkWell(
                    onTap: () {},
                    child: MostPurchased(
                      mostPurchasedImg: mostPurchased[index],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
