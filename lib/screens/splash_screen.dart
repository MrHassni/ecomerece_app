import 'dart:async';
import 'package:crockery_app/onboarding/onboarding_screen.dart';
import 'package:crockery_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // startTime() async {
  //   var _duration = new Duration(seconds: 2);
  //   return new Timer(_duration, navigationPage);
  // }
  //
  // void navigationPage() {
  //   // Navigator.of(context).pushReplacementNamed('/AccountScreen');
  //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  Onbording()));
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   startTime();
  // }
  startTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? firstTime = prefs.getBool('first_time');

    var _duration = Duration(seconds: 3);

    if (firstTime != null && !firstTime) {
      // Not first time
      return Timer(_duration, navigationPageHome);
    } else {
      // First time
      prefs.setBool('first_time', false);
      return Timer(_duration, navigationPageWel);
    }
  }

  void navigationPageHome() {

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  Home()));
  }

  void navigationPageWel() {

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  Onbording()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepOrange[800],
      body:
      Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width *0.50,
                  width: MediaQuery.of(context).size.width *0.50,
                  child: Image.asset('images/crockery_logo.png',
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.2,)
             ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 20,),

              Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
SizedBox(height: 250,
    child: Image.asset('images/splash_left_img.png')),
                  Spacer(),
                  SizedBox(height: 300,
                      child: Image.asset('images/splash_right_img.png')),
              ],),
              Image.asset('images/splash_bottom_img.png'),
            ],
          ),
        ],
      ),
    );
  }
}