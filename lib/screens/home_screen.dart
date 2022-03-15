import 'dart:developer';

import 'package:crockery_app/constant/constant.dart';
import 'package:crockery_app/models/product_model.dart';
import 'package:crockery_app/widgets/avilabeloffers.dart';
import 'package:crockery_app/widgets/featureproduct.dart';
import 'package:crockery_app/widgets/shopslistwidget.dart';
import 'package:crockery_app/widgets/top_bar_with_buttons.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../widgets/bottom_navigation/bottom_sheet.dart';
import '../widgets/slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late UserModel _userModel;
  late ProductModel _productModel;
  final List _shopname = [
    'Gift shop',
    'Dining & kitchen',
    'Home Decor',
    'Lighting',

  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _userModel = UserModel.fromMap(userMap);
    _productModel = ProductModel.fromMap(productMap);
  }

  final List _shopimg = [
    'images/giftimg.png',
    'images/diningimg.png',
    'images/decorimg.png',
    'images/lightingimg.png'
  ];
  final List _color = [
    Colors.red[50],
    Colors.yellow[50],
    Colors.blue[50],
    Colors.green[50]

  ];
  // final List _featureimg = [
  //   'images/opaldinner.png',
  //   'images/kitchencattle.png',
  //   'images/schoolbottle.png',
  //   'images/opaldinner.png',
  //   'images/kitchencattle.png',
  //   'images/schoolbottle.png'
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Home Page"),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopBarWithButtons(
                  pageDescription: 'What do you want to buy?',
                  pageName: 'Hi, ' + _userModel.userName!),
              const SizedBox(
                height: 25,
              ),
              const HorizontalSlider(),
              //shop.....
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Shops',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Constants.kBlackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontFamily: 'Nuntio-Bold.ttf'),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavigate(i: 4),
                            ),
                          );
                        },
                        child: const Text(' View all ',
                            style: TextStyle(
                                color: Constants.kDarkOrangeColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 13.5,
                                fontFamily: 'Nuntio-Bold.ttf')),
                      ),
                    ]),
              ),
              SizedBox(
                height: 125,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          //here home page four card navigate
                          if (index == 0) {
                            // Navigator.pushReplacement(
                            //     NavigationService.navigatorKey.currentContext!,
                            //     MaterialPageRoute(builder: (context) => BottomNavigate(i:4)));
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavigate(
                                  i: 5,
                                ),
                              ),
                            );
                          } else if (index == 1) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavigate(
                                  i: 6,
                                ),
                              ),
                            );
                          } else if (index == 2) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavigate(
                                  i: 7,
                                ),
                              ),
                            );
                          } else if (index == 3) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavigate(
                                  i: 8,
                                ),
                              ),
                            );
                          }
                          // else if(index==1){}
                          else {
                            print('invalid');
                          }
                        },
                        child: ShopListWidget(
                          index: index,
                          image: _shopimg[index],
                          title: _shopname[index],
                          colour: _color[index],
                        ),
                      );
                    }),
              ),
              Container(
                height: 10,
                color: Colors.grey.shade300,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Featured products',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Constants.kBlackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          fontFamily: 'Nuntio-Bold.ttf'),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(
                        //     builder: (context) => DealsScreen()),
                        // );
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
              Container(
                decoration: const BoxDecoration(
                  // border: Border(top: BorderSide(color: Colors.grey, width: 5)),
                  borderRadius: BorderRadius.only(
                      // topLeft: Radius.circular(50.0),
                      // topRight: Radius.circular(50.0),
                      ),
                ),

                height: 225,
                width: MediaQuery.of(context).size.width,
                // width: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return  FeaturedProducts(index: index,);
                    }),
              ),
              Container(
                height: 10,
                color: Colors.grey.shade300,
              ),
              // Avilable offers..
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Available Offers',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Constants.kBlackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          fontFamily: 'Nuntio-Bold.ttf'),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(
                        //     builder: (context) => DealsScreen()),
                        // );
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
              Container(
                color: Colors.transparent,
                height: 265,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return AvailabelOffers(index: index, lengthOfList: 5,);
                    }),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
