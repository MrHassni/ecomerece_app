
import 'package:crockery_app/widgets/avilabeloffers.dart';
import 'package:crockery_app/widgets/mostpurchased.dart';
import 'package:crockery_app/widgets/shopslistwidget.dart';
import 'package:crockery_app/widgets/slider.dart';
import 'package:crockery_app/widgets/top_bar_with_buttons.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../screens/home_screen.dart';
import '../widgets/featureproduct.dart';
import '../widgets/shopwidgets.dart';


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
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: GridView.count(
                  shrinkWrap: true,
                  childAspectRatio: 8.5 / 7,
                  crossAxisSpacing: 10.0,
                  physics:  const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  children: List.generate(4,(index){

                    return  InkWell(
                      onTap: () {
                      },
                      child: ShopWidget( allCateImg: allCatagoriesImg[index], allCateName: allCategoriesName[index],

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

              GridView.count(
                childAspectRatio: 4/4.5,
                shrinkWrap: true,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 5,
                physics:  const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,
                children: List.generate(5,(index){

                  return  InkWell(
                    onTap: () {
                    },
                    child:MostPurchased(mostPurchasedImg: mostPurchased[index],

                    ),
                  );

                }),
              ),

            ],),
        ),
      ),);
  }
}