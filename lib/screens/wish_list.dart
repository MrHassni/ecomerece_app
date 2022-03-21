import 'package:flutter/material.dart';
import '../widgets/category_widgets/mostpurchased.dart';
import '../widgets/top_bars/top_bar_with_buttons.dart';


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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
              const TopBarWithButtons(pageName: 'Wish List', pageDescription: 'Your Wish List',showBackButton: false),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5,),
              child: const MostPurchased(),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
