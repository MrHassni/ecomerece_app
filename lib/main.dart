
import 'dart:developer';

import 'package:crockery_app/models/user_model.dart';
import 'package:crockery_app/screens/cart_detail_screen.dart';
import 'package:crockery_app/screens/enter_mob_num_screen.dart';
import 'package:crockery_app/screens/home_screen.dart';
import 'package:crockery_app/screens/login_screen.dart';
import 'package:crockery_app/screens/order_accept_screen.dart';
import 'package:crockery_app/screens/product_detail_screen.dart';
import 'package:crockery_app/screens/search_screen.dart';
import 'package:crockery_app/screens/splash_screen.dart';
import 'package:crockery_app/widgets/bottom_navigation/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'helper/navigator.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationService.navigatorKey, // set property
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      // home: SplashScreen(),
      // home: CartDetail(),
      // home: BottomNavigate(),

      home: BottomNavigate(),

    );
  }
}
