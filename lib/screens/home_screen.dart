
import 'package:crockery_app/constant/constant.dart';
import 'package:crockery_app/models/product_model.dart';
import 'package:crockery_app/providers/navgation_provider.dart';
import 'package:crockery_app/screens/product_detail_screen.dart';
import 'package:crockery_app/widgets/avilabeloffers.dart';
import 'package:crockery_app/widgets/featureproduct.dart';
import 'package:crockery_app/widgets/category_widgets/shopslistwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../models/user_model.dart';
import '../widgets/bottom_navigation/bottom_navigation_bar.dart';
import '../widgets/slider.dart';
import '../widgets/top_bars/top_bar_with_buttons.dart';

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

  Map<String, dynamic> productMap = {
    'productName': 'Mobile Phone',
    'productID': '123abc',
    'userImage': [
      'https://topleagueboost.com/boostpanel/assets/img/avatars/0.png',
      'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
      'https://www.w3schools.com/w3css/img_lights.jpg'
    ],
  };

  Map<String, String> userMap = {
    'userName': 'Hassan',
    'userEmail': 'hassan@gmail.com',
    'userID': 'abc123',
    'userImage':
    'https://topleagueboost.com/boostpanel/assets/img/avatars/0.png',
    'userContact': '03000000000'
  };

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
                  showBackButton: false,
                  pageDescription: 'What do you want to buy?',
                  pageName: _userModel.userName == null || _userModel.userName == '' ? 'Welcome To Crockery Bazaar' : 'Hi, ' + _userModel.userName!),
              const SizedBox(
                height: 15,
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
                              builder: (context) => BottomNavigate(i: 5),
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
                            Provider.of<NavigationProvider>(context,listen: false).setTitleAndDisForSubOne('Gift Shop', 'Gift Shop Product Details');
                          } else if (index == 1) {
                            Provider.of<NavigationProvider>(context,listen: false).setTitleAndDisForSubOne('Dinning & Kitchen', 'Gift Shop Product Details');
                          } else if (index == 2) {
                            Provider.of<NavigationProvider>(context,listen: false).setTitleAndDisForSubOne('Home Decor', 'Gift Shop Product Details');
                          } else {
                            Provider.of<NavigationProvider>(context,listen: false).setTitleAndDisForSubOne('Lighting', 'Gift Shop Product Details');
                          }
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavigate(
                                i: 6,
                              ),
                            ),
                          );
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
              const FeaturedProducts(),
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
              const AvailabelOffers(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Most Popular',
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
              const FeaturedProducts(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Trending',
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
              const FeaturedProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
