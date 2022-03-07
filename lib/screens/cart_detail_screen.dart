import 'package:crockery_app/widgets/card_check_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../widgets/product_list_image_with_color_widget.dart';

class CartDetail extends StatefulWidget {
  const CartDetail({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<CartDetail> with TickerProviderStateMixin {
  String url = 'images/cup.png';
  final List allProdImg = [
    'images/cupone.png',
    'images/cuptwo.png',
    'images/cupthree.png',
    'images/cupfour.png',
    'images/cupone.png',
    'images/cuptwo.png',
    'images/cupthree.png',
    'images/cupfour.png',
    'images/cupone.png',
    'images/cuptwo.png',
    'images/cupthree.png',
    'images/cupfour.png',
  ];
  final List allProdName = [
    'Grey',
    'Red',
    'Yellow',
    'Brown',
    'Green',
    'Purple',
    'Pink',
    'Orange',
    'Black',
    'Silver',
    'Golden',
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
                          'Cart Detail',
                          style: TextStyle(
                              color: Constants.kBlackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                  width: 350,
                  child: Text(
                    'See Cart Details',
                    style: TextStyle(color: Constants.kGreyColor, fontSize: 12),
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
