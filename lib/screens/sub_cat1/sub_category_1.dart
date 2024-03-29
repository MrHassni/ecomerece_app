import 'package:crockery_app/providers/navgation_provider.dart';
import 'package:crockery_app/widgets/avilabeloffers.dart';
import 'package:crockery_app/widgets/category_widgets/mostpurchased.dart';
import 'package:crockery_app/widgets/slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../constant/constant.dart';
import '../../widgets/category_widgets/shopwidgets.dart';
import '../../widgets/top_bars/top_bar_with_buttons.dart';

class SubCategoryOneScreen extends StatefulWidget {

  const SubCategoryOneScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<SubCategoryOneScreen> {
  final List allCatagoriesImg = [
    'images/giftpic.png',
    'images/decorpic.png',
    'images/diningkitchen.png',
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
    'Gift Shop',
    'Dinning & Kitchen',
    'Home Decor',
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
  ];
  bool showSearch = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
      builder: (BuildContext context, navigationProvider, Widget? child) {
      return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                   SizedBox(height: 85,),
                    // const TopBarWithButtons(pageName: 'Gift Shop',pageDescription: 'Gift Shop products Detail'),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
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
                    const HorizontalSlider(),

                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Trending Gifts',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Constants.kBlackColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                fontFamily: 'Nuntio-Bold.ttf'),
                          ),
                          InkWell(
                            onTap: () {},
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
                    const AvailabelOffers(),
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
                            onTap: () {},
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

                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5,),
                      child: const MostPurchased(),
                    ),
                  ],
                ),
              ),
              TopBarWithButtons(pageName: navigationProvider.title1!,pageDescription: navigationProvider.description1!),
            ],
          ),
        ),
      );}
    );
  }
}
