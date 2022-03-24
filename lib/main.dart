import 'dart:developer';

import 'package:crockery_app/constant/constant.dart';
import 'package:crockery_app/providers/cart_provider.dart';
import 'package:crockery_app/providers/navgation_provider.dart';
import 'package:crockery_app/screens/splash_screen.dart';
import 'package:crockery_app/shared_preferences/shared_preferences.dart';
import 'package:crockery_app/widgets/bottom_navigation/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'helper/navigator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();


  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => NavigationProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
    ),
  ],
      child: const MyApp()));

}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    Provider.of<CartProvider>(context,listen: false).addProductToCart();
    FlutterStatusbarcolor.setStatusBarColor(Constants.kDarkOrangeColor);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationService.navigatorKey, // set property
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      // home: SplashScreen(),
      // home: CartDetail(),
      // home: BottomNavigate(),

      home: SplashScreen(),
    );
  }
}
