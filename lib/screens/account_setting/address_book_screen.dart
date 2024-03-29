
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constant/constant.dart';
import '../../widgets/bottom_navigation/bottom_navigation_bar.dart';
import '../../widgets/category_widgets/shopwidgets.dart';
import '../../widgets/top_bars/top_bar_without_button.dart';

class AddressBookScreen extends StatefulWidget {
  const AddressBookScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<AddressBookScreen> {
  // final List mostPurchased =[
  //   'images/study.png',
  //   'images/emollient.png',
  //   'images/gupshuptable.png',
  //   'images/study.png',
  //   'images/emollient.png',
  //   'images/gupshuptable.png',
  //
  // ];
  @override
  Widget build(BuildContext context) {
    // print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const TopBarWithoutButton(pageName: 'Address Book',),
              Container(
                  padding: EdgeInsets.all(10),
                  height: 60,
                  child: Row(
                    children: [
                       Icon(
                        Icons.shopping_bag_outlined,
                        color: Constants.kDarkOrangeColor,
                        size: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Work',
                              style: TextStyle(
                                  color: Constants.kBlackColor,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Nuntio-Bold.ttf',
                                  fontSize: 15),
                            ),
                            Text(
                              'canal berg housing society',
                              style: TextStyle(
                                  color: Constants.kGraniteGreyColor,
                                  fontFamily: 'Nuntio-Light.ttf',
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      const Text(
                        'Select',
                        style: TextStyle(
                            color: Constants.kBlueColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Nuntio-Bold.ttf',
                            fontSize: 15),
                      ),
                    ],
                  )),
              //Hospital add...
              const Divider(
                height: 20,
                color: Constants.kLightGreyColor,
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  height: 60,
                  child: Row(
                    children: [
                      Icon(Icons.local_hospital_outlined,color: Constants.kDarkOrangeColor,),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Hospital',
                              style: TextStyle(
                                  color: Constants.kBlackColor,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Nuntio-Bold.ttf',
                                  fontSize: 15),
                            ),
                            Text(
                              'canal berg Hospital',
                              style: TextStyle(
                                  color: Constants.kGraniteGreyColor,
                                  fontFamily: 'Nuntio-Light.ttf',
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      const Text(
                        'Select',
                        style: TextStyle(
                            color: Constants.kBlueColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Nuntio-Bold.ttf',
                            fontSize: 15),
                      ),
                    ],
                  )),
              //Tution add..
              const Divider(
                height: 20,
                color: Constants.kLightGreyColor,
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  height: 60,
                  child: Row(
                    children: [
                       Icon(
                        Icons.shopping_bag_outlined,
                        color: Constants.kDarkOrangeColor,
                        size: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Tution Center',
                              style: TextStyle(
                                  color: Constants.kBlackColor,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Nuntio-Bold.ttf',
                                  fontSize: 15),
                            ),
                            Text(
                              'Block A1 phase 2 johar twon',
                              style: TextStyle(
                                  color: Constants.kGraniteGreyColor,
                                  fontFamily: 'Nuntio-Light.ttf',
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      const Text(
                        'Select',
                        style: TextStyle(
                            color: Constants.kBlueColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Nuntio-Bold.ttf',
                            fontSize: 15),
                      ),
                    ],
                  )),
              //Canal view colony....
              const Divider(
                height: 20,
                color: Constants.kLightGreyColor,
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  height: 60,
                  child: Row(
                    children: [
                       Icon(
                        Icons.location_on_outlined,
                        color: Constants.kDarkOrangeColor,
                        size: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Canal View Colony',
                              style: TextStyle(
                                  color: Constants.kBlackColor,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Nuntio-Bold.ttf',
                                  fontSize: 15),
                            ),
                            // Text(
                            //   'canal berg Hospital',
                            //   style: TextStyle(
                            //       color: Constants.kGraniteGreyColor,
                            //       fontFamily: 'Nuntio-Light.ttf',
                            //       fontSize: 12),
                            // ),
                          ],
                        ),
                      ),
                      Spacer(),
                      const Text(
                        'Select',
                        style: TextStyle(
                            color: Constants.kBlueColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Nuntio-Bold.ttf',
                            fontSize: 15),
                      ),
                    ],
                  )),
              // Irrigation add
              const Divider(
                height: 20,
                color: Constants.kLightGreyColor,
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  height: 60,
                  child: Row(
                    children: [
                       Icon(
                        Icons.location_on_outlined,
                        color: Constants.kDarkOrangeColor,
                        size: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Irrigation Colony',
                              style: TextStyle(
                                  color: Constants.kBlackColor,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Nuntio-Bold.ttf',
                                  fontSize: 15),
                            ),
                            // Text(
                            //   'canal berg Hospital',
                            //   style: TextStyle(
                            //       color: Constants.kGraniteGreyColor,
                            //       fontFamily: 'Nuntio-Light.ttf',
                            //       fontSize: 12),
                            // ),
                          ],
                        ),
                      ),
                      Spacer(),
                      const Text(
                        'Select',
                        style: TextStyle(
                            color: Constants.kBlueColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Nuntio-Bold.ttf',
                            fontSize: 15),
                      ),
                    ],
                  )),
              const Divider(
                height: 22,
                color: Constants.kLightGreyColor,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.add,
                      color: Constants.kOrangeColor,
                      size: 25,
                    ),
                    Text(
                      'Add New Address',
                      style: TextStyle(
                          color: Constants.kOrangeColor,
                          fontFamily: 'Nuntio-Bold.ttf',
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
