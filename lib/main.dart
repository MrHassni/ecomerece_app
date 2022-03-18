import 'package:crockery_app/screens/account_setting/change_password_screen.dart';
import 'package:crockery_app/screens/enter_mob_num_screen.dart';
import 'package:crockery_app/screens/enter_otp_screen.dart';
import 'package:crockery_app/screens/login_screen.dart';
import 'package:crockery_app/screens/product_detail_screen.dart';
import 'package:crockery_app/screens/splash_screen.dart';
import 'package:crockery_app/sub_cat3/drinkware_screen.dart';
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
      home: SplashScreen(),
      // home: CartDetail(),
      // home: BottomNavigate(),

      // home: DrinkWare(),
      // home: MobileNumber(),

    );
  }
}
