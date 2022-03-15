
import 'package:crockery_app/widgets/bottom_navigation/bottom_sheet.dart';
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
      home: BottomNavigate(),

      // home: Home(),

    );
  }
}
