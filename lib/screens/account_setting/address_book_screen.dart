import 'package:crockery_app/widgets/category_widgets/mostpurchased.dart';
import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import '../../widgets/bottom_navigation/bottom_navigation_bar.dart';
import '../../widgets/category_widgets/shopwidgets.dart';

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
          child: Padding(
            padding: EdgeInsets.only(top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 0,
                      left: 15,
                    ),
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
                          'Address Book',
                          style: TextStyle(
                              color: Constants.kBlackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),

                //work add...
                const Divider(
                  height: 20,
                  color: Constants.kLightGreyColor,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    height: 60,
                    child: Row(
                      children: [
                        const Icon(
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
                        Container(
                          height: 35,
                          width: 35,
                          // radius: 15,
                          // backgroundColor: Colors.white,
                          // backgroundImage: AssetImage('images/whtsupimg.png'),
                          decoration: BoxDecoration(
                            color: Constants.kWhiteAccent,
                            border: Border.all(
                                color: Constants.kDarkOrangeColor, width: 1),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: SizedBox(
                            height: 5,
                            width: 5,
                            child: Image.asset(
                              'images/plus_img.png',
                            ),
                          ),
                        ),
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
                        const Icon(
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
                        const Icon(
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
                        const Icon(
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
      ),
    );
  }
}
