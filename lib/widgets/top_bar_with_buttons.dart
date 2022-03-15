import 'package:crockery_app/screens/cart_detail_screen.dart';
import 'package:crockery_app/screens/search_screen.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';


class TopBarWithButtons extends StatelessWidget {
 final String pageName,pageDescription;

   const TopBarWithButtons({Key? key,required this.pageDescription,required this.pageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  pageName,
                  style: const TextStyle(
                      color: Constants.kBlackColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
                  },
                  child: const Icon(
                    Icons.search,
                    color: Constants.kGrey55Color,
                  ),
                ),
                const SizedBox(width: 7,),
                const Icon(
                  Icons.notifications_none,
                  color: Constants.kDarkOrangeColor,
                ),
                const SizedBox(width: 7,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CartDetail()));
                  },
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Constants.kDarkOrangeColor,
                  ),
                ),
              ],
            ),
             const SizedBox(
              height: 15,
            ),
             Text(
              pageDescription,
              textAlign: TextAlign.left,
              style: const TextStyle(color: Constants.kGrey55Color, fontSize: 12),
            ),
          ],),
      ),
    );
  }
}
