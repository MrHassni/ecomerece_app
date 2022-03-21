import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constant/constant.dart';
import '../../widgets/bottom_navigation/bottom_navigation_bar.dart';
import '../../widgets/category_widgets/shopwidgets.dart';
import '../../widgets/top_bars/top_bar_with_buttons.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const TopBarWithButtons(pageDescription: 'App Settings', pageName: 'Setting',showBackButton: false),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavigate(i: 13,),
                    ),
                  );
                },
                child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: const [
                        Icon(Icons.person_outline_outlined,color: Constants.kLightGreyColor,),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Account Details',
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
              ),
              //My Address add...
              const Divider(
                height: 0,
                color: Constants.kLightGreyColor,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavigate(i: 14,),
                    ),
                  );
                },
                child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: const [
                        Icon(Icons.person_pin_circle_outlined,color: Constants.kLightGreyColor,),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'My Addresses',
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
              ),
              //My order add..
              const Divider(
                height: 0,
                color: Constants.kLightGreyColor,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavigate(i: 15,),
                    ),
                  );
                },
                child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: const [
                        Icon(Icons.shopping_bag_outlined,color: Constants.kLightGreyColor,),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'My Orders',
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
              ),
              //Notification....
              const Divider(
                height: 0,
                color: Constants.kLightGreyColor,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavigate(i: 16,),
                    ),
                  );
                },
                child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: const [
                        Icon(Icons.notifications_none,color: Constants.kLightGreyColor,),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Notifications',
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
              ),
              // setting add
              const Divider(
                height: 0,
                color: Constants.kLightGreyColor,
              ),
              InkWell(
                onTap: (){},
                child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: const [
                        Icon(Icons.settings_outlined,color: Constants.kLightGreyColor,),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Settings',
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
              ),
              const Divider(
                height: 0,
                color: Constants.kLightGreyColor,
              ),
              //contact...
              InkWell(
                onTap: (){},
                child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: const [
                      Icon(Icons.whatsapp_outlined,color: Constants.kLightGreyColor,),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Contact Us Via Whatsapp',
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
              ),
              const Divider(
                height: 0,
                color: Constants.kLightGreyColor,
              ),
              //About us ...
              InkWell(
                onTap: (){},
                child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: const [
                        // Icon(Icons.settings,color: Constants.kLightGreyColor,),
                        Icon(Icons.info_outlined,color: Constants.kLightGreyColor,),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'About Us',
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
              ),
              const Divider(
                height: 0,
                color: Constants.kLightGreyColor,
              ),
            SizedBox(height: 25,),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  const [
                      Icon(FontAwesomeIcons.powerOff,color: Constants.kDarkOrangeColor,),
                      SizedBox(width: 10,),
                      Text(
                        'Log Out',
                        style: TextStyle(
                            color: Constants.kDarkOrangeColor,
                            fontFamily: 'Nuntio-Bold.ttf',
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
