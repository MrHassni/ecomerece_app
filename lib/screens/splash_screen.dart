import 'dart:async';
import 'package:crockery_app/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    // Navigator.of(context).pushReplacementNamed('/AccountScreen');
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  Onbording()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepOrange[800],
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.width *0.55,
          width: MediaQuery.of(context).size.width *0.55,
          child: Image.asset('images/crockery_logo.png',
          ),
        ),
      ),
    );
  }
}