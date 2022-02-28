import 'package:crockery_app/screens/home_screen.dart';
import 'package:crockery_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'bottom/bottom_sheet.dart';
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
      // home: BottomNavigate(),
    );
  }
}
