import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Constants {

  //colors
  static const kWhiteAccent = Color(0xFFFFFFFF);
  static const kGreyColor = Color(0xFF9E9E9E);
  static const kBlackColor = Color(0xFF000000);
  static const kDarkGreyColor = Color(0xFF9E9E9E);
  static const kGraniteGreyColor =Color(0xFF676767);
  static const kGrey55Color = Color(0xFF8C8C8C);
  static const kOrangeColor = Color(0xFFF37A20);
  static const kLightOrangeColor = Color(0xFFffac81);
  static const kDarkOrangeColor = Color(0xFFAB4D24);
  static const kWhite54Color =Colors.white54;
  static const kBorderColor = Color(0xFFEFEFEF);
  static const kRedColor = Colors.red;
  static const kGreenColor = Color(0xFF10BB88);
  static const kLightGreenColor = Color(0xFF94F1D5);
  static const kBlueColor = Color(0XFF00779E);

  //text
  // static const title = "Google Sign In";
  // static const textIntro = "Chat with friends \n for best connection ";
  // static const textIntroDesc1 = "beclose \n ";
  // static const textIntroDesc2 = " with love ones!";
  // static const textSmallSignUp = "Sign up takes only 2 minutes!";
  // static const textSignIn = "Sign In";
  // static const textStart = "Get Started";
  // static const textSignInTitle = "Welcome!";
  // static const textSmallSignIn = "You've been missed";
  // static const textSignInGoogle = "Sign In With Google";
  // static const textAcc = "Don't have an account? ";
  // static const textSignUp = "Sign Up here";
  // static const textHome = "Home";

  //Fonts
  static const kfontForBoldText = TextStyle(fontFamily: 'Nunito-Bold.ttf');
  static const kfontForLightText = TextStyle(fontFamily: 'Nunito-Light.ttf');

  // static Color colorAccent = Color(0xff007EF4);
  // static Color textColor = Color(0xff071930);

  //navigate
  // static const signInNavigate = '/sign-in';
  // static const homeNavigate = '/home';

  // static const statusBarColor = SystemUiOverlayStyle(
  //     statusBarColor: Constants.kWhiteAccent,
  //     statusBarIconBrightness: Brightness.dark);

}
const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.deepPurpleAccent, width: 2.0),
  ),
);
const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);
const kSendButtonTextStyle = TextStyle(
  color: Colors.deepPurpleAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);
