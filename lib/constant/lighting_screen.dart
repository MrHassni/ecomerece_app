
import 'package:crockery_app/widgets/avilabeloffers.dart';
import 'package:crockery_app/widgets/category_widgets/mostpurchased.dart';
import 'package:crockery_app/widgets/category_widgets/shopslistwidget.dart';
import 'package:crockery_app/widgets/slider.dart';
import 'package:crockery_app/widgets/top_bars/top_bar_with_buttons.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import '../screens/home_screen.dart';
import '../widgets/featureproduct.dart';
import '../widgets/category_widgets/shopwidgets.dart';


class LightingScreen  extends StatefulWidget {
  const LightingScreen({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State< LightingScreen> {
  final List allCatagoriesImg =[
    'images/lightone.png',
    'images/lighttwo.png',
    'images/lighting.png',
    'images/lightthree.png',
    // 'images/giftpic.png',
    // 'images/decorpic.png',
    // 'images/diningkitchen.png',
    // 'images/book.png',
    // 'images/giftpic.png',
    // 'images/decorpic.png',
    // 'images/diningkitchen.png',
    // 'images/book.png',
  ];
  final List allCategoriesName =[
    'Wall lights',
    'Drop Lights',
    'Table Lights',
    'Floor Lighjts',
    // 'Gift Shop',
    // 'dinning&Kitchen',
    // 'Home Decor',
    // 'Lighting',
    // 'Gift Shop',
    // 'dinning&Kitchen',
    // 'Home Decor',
    // 'Lighting',
  ];
  final List mostPurchased =[
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const TopBarWithButtons(pageDescription: 'Lighting Product Details', pageName: 'Lighting'),
              const Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
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

              //All Products call here....
              const Padding(
                padding: EdgeInsets.only(left: 10,right: 10),
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
                        // Navigator.push(context, MaterialPageRoute(
                        //     builder: (context) => DealsScreen()),
                        // );
                      },
                      child:const Text(' View all ',
                          style: TextStyle(
                              color: Constants.kDarkOrangeColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.5,
                              fontFamily: 'Nuntio-Bold.ttf')),
                    ),
                  ],
                ),
              ),

              MostPurchased()

            ],),
        ),
      ),);
  }
}