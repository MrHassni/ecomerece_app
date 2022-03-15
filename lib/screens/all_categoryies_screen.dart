
import 'package:crockery_app/widgets/shopwidgets.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../widgets/bottom_navigation/bottom_navigation_bar.dart';
import 'home_screen.dart';


class AllCategoriesScreen  extends StatefulWidget {
  const AllCategoriesScreen({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State< AllCategoriesScreen> {
  final List allCatagoriesImg =[
    'images/giftpic.png',
    'images/decorpic.png',
    'images/diningkitchen.png',
    'images/lighting.png',
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
  final List allCategoriesName =[
    'Gift Shop',
    'dinning&Kitchen',
    'Home Decor',
    'Lighting',
    'bookpp',
    'Gift Shop',
    'dinning&Kitchen',
    'Home Decor',
    'Lighting',
    'Gift Shop',
    'dinning&Kitchen',
    'Home Decor',
    'Lighting',
  ];
  final List _allShopName = [
    'Gift shop',
    'Dining & kitchen',
    'Home Decor',
    'Lighting',
    'Gift shop',
    'Dining & kitchen',
    'Home Decor',
    'Lighting',
    'Gift shop',
    'Dining & kitchen',
    'Home Decor',
    'Lighting',
    'Gift shop',
    'Dining & kitchen',
    'Home Decor',
    'Lighting',
  ];

  final List _allShopImg = [
    'images/giftimg.png',
    'images/diningimg.png',
    'images/decorimg.png',
    'images/lightingimg.png',
     'images/giftimg.png',
    'images/diningimg.png',
    'images/decorimg.png',
    'images/lightingimg.png',
    'images/giftimg.png',
    'images/diningimg.png',
    'images/decorimg.png',
    'images/lightingimg.png',
    'images/giftimg.png',
    'images/diningimg.png',
    'images/decorimg.png',
    'images/lightingimg.png',
  ];
  final List _colorBg = [
    Colors.red[50],
    Colors.yellow[50],
    Colors.blue[50],
    Colors.green[50],
    Colors.red[50],
    Colors.yellow[50],
    Colors.blue[50],
    Colors.green[50],
    Colors.red[50],
    Colors.yellow[50],
    Colors.blue[50],
    Colors.green[50],
    Colors.red[50],
    Colors.yellow[50],
    Colors.blue[50],
    Colors.green[50],

  ];
  bool showSearch = false;
  @override
  Widget build(BuildContext context) {
    // print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(10),
            child: Column(
              children:  [
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Home()),
                            );
                          },
                            child: Icon(Icons.arrow_back_ios, color: Constants.kDarkOrangeColor)),
                         const Text(
                          'Categories',
                          style: TextStyle(
                              color: Constants.kBlackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
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
                          child: const Icon(
                            Icons.search,
                            color: Constants.kGreyColor,
                          ),
                        ),
                        const Icon(
                          Icons.doorbell_outlined,
                          color:Constants.kDarkOrangeColor,
                        ),
                        const Icon(
                          Icons.shopping_cart,
                          color:Constants.kDarkOrangeColor,
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
                ),

                //for search
                showSearch
                    ? Container(
                  height: 40,
                  width: 350,
                  child: TextFormField(
                    onChanged: (_) {
                      // initiateSearch();
                    },
                    // controller: searchEditingController,
                    decoration: InputDecoration(
                        focusColor:Constants.kDarkOrangeColor,
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
                              color: Constants.kDarkOrangeColor, width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color:Constants.kDarkOrangeColor, width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        hintStyle: const TextStyle(
                            color: Constants.kGreyColor, fontFamily: "WorkSansLight"),
                        filled: true,
                        fillColor: Constants.kWhite54Color,
                        hintText: 'Search by name...'),
                  ),
                )
                    : const SizedBox(
                  height: 40,
                  width: 350,
                  child: Text(
                    'View all Categories?',
                    style: TextStyle(color: Constants.kGreyColor, fontSize: 12),
                  ),
                ),

       // All Categories  here....
                const ShopWidget(),

              ],),
          ),
        ),
    ),);
  }
}