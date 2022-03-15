import 'package:crockery_app/widgets/avilabeloffers.dart';
import 'package:crockery_app/widgets/mostpurchased.dart';
import 'package:crockery_app/widgets/shopslistwidget.dart';
import 'package:crockery_app/widgets/slider.dart';
import 'package:crockery_app/widgets/top_bar_without_buttons.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../screens/home_screen.dart';
import '../widgets/featureproduct.dart';
import '../widgets/shopwidgets.dart';
import '../widgets/top_bar_with_buttons.dart';

class GiftShopScreen extends StatefulWidget {
  const GiftShopScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<GiftShopScreen> {
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
    // print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopBarWithButtons(pageName: 'Gift Shop',pageDescription: 'Gift Shop products Detail'),
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
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: GridView.count(
                  shrinkWrap: true,
                  childAspectRatio: 8.5 / 7,
                  crossAxisSpacing: 10.0,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  children: List.generate(8, (index) {
                    return InkWell(
                      onTap: () {},
                      child: ShopWidget(
                        allCateImg: allCatagoriesImg[index],
                        allCateName: allCategoriesName[index],
                      ),
                    );
                  }),
                ),
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
                width: MediaQuery.of(context).size.width,
                // width: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return AvailabelOffers(
                        index: index,
                        lengthOfList: 5,
                      );
                    }),
              ),
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
                padding: const EdgeInsets.symmetric(horizontal: 5,),
                child: GridView.count(
                  shrinkWrap: true,
                  childAspectRatio: 4/4.5,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  children: List.generate(3, (index) {
                    return InkWell(
                      onTap: () {},
                      child: MostPurchased(
                        mostPurchasedImg: mostPurchased[index],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
