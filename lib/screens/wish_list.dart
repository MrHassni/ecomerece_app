
import 'package:crockery_app/widgets/mostpurchased.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../widgets/bottom_navigation/bottom_sheet.dart';
import '../widgets/shopwidgets.dart';


class WishListScreen  extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State< WishListScreen> {

  final List mostPurchased =[
    'images/study.png',
    'images/emollient.png',
    'images/gupshuptable.png',
    'images/study.png',
    'images/emollient.png',
    'images/gupshuptable.png',

  ];
  @override
  Widget build(BuildContext context) {
    // print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              //   Navigator.push(context, MaterialPageRoute(
                              //       builder: (context) => Home()),
                              //   );
                            },
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Constants.kDarkOrangeColor,
                            )),
                        const Text(
                          'Wish list',
                          style: TextStyle(
                              color: Constants.kBlackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(Icons.search,color: Constants.kLightGreyColor),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                  width: 350,
                  child: Text(
                    'Your Wish List',
                    style: TextStyle(color: Constants.kGreyColor, fontSize: 12),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: GridView.count(
                    childAspectRatio: 3/4.4,
                    crossAxisSpacing: 2.0,
                    // crossAxisSpacing: 20,
                    mainAxisSpacing: 5,
                    physics:  NeverScrollableScrollPhysics(),
                    // scrollDirection: Axis.horizontal,
                    // padding: EdgeInsets.all(10.0),
                    scrollDirection: Axis.vertical,
                    // padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    crossAxisCount: 3,
                    children: List.generate(6,(index){

                      return  InkWell(
                        onTap: () {
                          // MaterialPageRoute(builder: (context) => GroceryScreen());
                        },
                        child: MostPurchased(mostPurchasedImg: mostPurchased[index],
                      ),
                      );
                    }),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
