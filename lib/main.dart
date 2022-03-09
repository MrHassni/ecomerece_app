
import 'package:crockery_app/screens/cart_detail_screen.dart';
import 'package:crockery_app/screens/order_accept_screen.dart';
import 'package:crockery_app/screens/orders_page.dart';
import 'package:crockery_app/screens/splash_screen.dart';
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
      home: OrderAccept(),
    );
  }
}
