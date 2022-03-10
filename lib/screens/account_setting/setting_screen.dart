import 'package:crockery_app/widgets/mostpurchased.dart';
import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import '../../widgets/bottom_navigation/bottom_sheet.dart';
import '../../widgets/shopwidgets.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<SettingScreen> {
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
                          'Setting',
                          style: TextStyle(
                              color: Constants.kBlackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),

                //edit add...
                const Divider(
                  height: 20,
                  color: Constants.kLightGreyColor,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    height: 40,
                    child: Row(
                      children: const [
                        Icon(Icons.edit,color: Constants.kLightGreyColor,),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Edit Profil',
                            style: TextStyle(
                                color: Constants.kGraniteGreyColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Nuntio-Bold.ttf',
                                fontSize: 15),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios,color: Constants.kLightGreyColor,),
                      ],
                    )),
                //My Address add...
                const Divider(
                  height: 20,
                  color: Constants.kLightGreyColor,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    height: 40,
                    child: Row(
                      children: const [
                        Icon(Icons.location_on_outlined,color: Constants.kLightGreyColor,),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'My Address',
                            style: TextStyle(
                                color: Constants.kGraniteGreyColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Nuntio-Bold.ttf',
                                fontSize: 15),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios,color: Constants.kLightGreyColor,),
                      ],
                    )),
                //My order add..
                const Divider(
                  height: 20,
                  color: Constants.kLightGreyColor,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    height: 40,
                    child: Row(
                      children: const [
                        Icon(Icons.shop,color: Constants.kLightGreyColor,),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'My Order',
                            style: TextStyle(
                                color: Constants.kGraniteGreyColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Nuntio-Bold.ttf',
                                fontSize: 15),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios,color: Constants.kLightGreyColor,),
                      ],
                    )),
                //Notification....
                const Divider(
                  height: 20,
                  color: Constants.kLightGreyColor,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    height: 40,
                    child: Row(
                      children: const [
                        Icon(Icons.doorbell,color: Constants.kLightGreyColor,),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Notification',
                            style: TextStyle(
                                color: Constants.kGraniteGreyColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Nuntio-Bold.ttf',
                                fontSize: 15),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios,color: Constants.kLightGreyColor,),
                      ],
                    )),
                // setting add
                const Divider(
                  height: 20,
                  color: Constants.kLightGreyColor,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    height: 40,
                    child: Row(
                      children: const [
                        Icon(Icons.settings,color: Constants.kLightGreyColor,),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Setting',
                            style: TextStyle(
                                color: Constants.kGraniteGreyColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Nuntio-Bold.ttf',
                                fontSize: 15),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios,color: Constants.kLightGreyColor,),
                      ],
                    )),
                const Divider(
                  height: 20,
                  color: Constants.kLightGreyColor,
                ),
                //contact...
                Container(
                    padding: EdgeInsets.all(12),
                    height: 40,
                    child: Row(
                      children: [
                        // Icon(Icons.settings,color: Constants.kLightGreyColor,),
                        SizedBox(
                          height: 20,
                            width: 20,
                            child: Image.asset('images/whtsupimg.png',)),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Contact us via',
                            style: TextStyle(
                                color: Constants.kGraniteGreyColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Nuntio-Bold.ttf',
                                fontSize: 15),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios,color: Constants.kLightGreyColor,),
                      ],
                    )),
                const Divider(
                  height: 20,
                  color: Constants.kLightGreyColor,
                ),
                //About us ...
                Container(
                    padding: EdgeInsets.all(12),
                    height: 40,
                    child: Row(
                      children: const [
                        // Icon(Icons.settings,color: Constants.kLightGreyColor,),
                        Icon(Icons.doorbell,color: Constants.kLightGreyColor,),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'About us',
                            style: TextStyle(
                                color: Constants.kGraniteGreyColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Nuntio-Bold.ttf',
                                fontSize: 15),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios,color: Constants.kLightGreyColor,),
                      ],
                    )),
                const Divider(
                  height: 22,
                  color: Constants.kLightGreyColor,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20,right: 10,top: 60),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset('images/logoutimg.png',)),
                      SizedBox(width: 10,),
                      const Text(
                        'Log Out',
                        style: TextStyle(
                            color: Constants.kOrangeColor,
                            fontFamily: 'Nuntio-Bold.ttf',
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios,color: Constants.kLightGreyColor,),
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
