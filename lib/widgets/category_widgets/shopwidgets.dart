import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/navgation_provider.dart';
import '../bottom_navigation/bottom_navigation_bar.dart';

class ShopWidget extends StatefulWidget {
  const ShopWidget({Key? key}) : super(key: key);

  @override
  State<ShopWidget> createState() => _ShopWidgetState();
}

class _ShopWidgetState extends State<ShopWidget> {
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

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        childAspectRatio: 8.5 / 7,
        crossAxisSpacing: 10.0,
        physics: const NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    children: List.generate(8, (index) {
      return InkWell(
        onTap: (){if (index == 0) {
          Provider.of<NavigationProvider>(context,listen: false).setTitleAndDisForSubTwo('Gift Shop', 'Gift Shop Product Details');
        } else if (index == 1) {

          Provider.of<NavigationProvider>(context,listen: false).setTitleAndDisForSubTwo('D & K', 'Gift Shop Product Details');
        } else if (index == 2) {

          Provider.of<NavigationProvider>(context,listen: false).setTitleAndDisForSubTwo('Home Decor', 'Gift Shop Product Details');
        } else {
          Provider.of<NavigationProvider>(context,listen: false).setTitleAndDisForSubTwo('Others', 'Gift Shop Product Details');
        }
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNavigate(
              i: 7,
            ),
          ),
        );
        },
        child: Card(
          margin: const EdgeInsets.only( bottom:  10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
            Image.asset(
              allCatagoriesImg[index],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Center(
                child: Text(
                  allCategoriesName[index],
                  style:
                      const TextStyle(fontSize: 13, fontFamily: 'Nuntio-Light.ttf'),
                  // style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ]),
        ),
      );},),
    );
  }
}
