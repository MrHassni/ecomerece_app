import 'package:crockery_app/constant/constant.dart';
import 'package:crockery_app/providers/navgation_provider.dart';
import 'package:crockery_app/screens/enter_mob_num_screen.dart';
import 'package:crockery_app/screens/splash_screen.dart';
import 'package:crockery_app/widgets/bottom_navigation/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:provider/provider.dart';
import 'helper/navigator.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => NavigationProvider(),),
  ],
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Constants.kDarkOrangeColor);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationService.navigatorKey, // set property
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: SplashScreen(),
      // home: CartDetail(),
      // home: BottomNavigate(),
// home:MobileNumber(),
      // home: BottomNavigate(),
    );
  }
}
