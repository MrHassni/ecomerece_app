
import 'package:crockery_app/widgets/mostpurchased.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../widgets/bottom_navigation/bottom_navigation_bar.dart';
import '../widgets/shopwidgets.dart';
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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              TopBarWithButtons(pageName: 'Wish List', pageDescription: 'Your Wish List'),
              MostPurchased(),
            ],
          ),
        ),
      ),
    );
  }
}
