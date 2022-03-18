import 'dart:developer';

import 'package:crockery_app/screens/login_screen.dart';
import 'package:crockery_app/screens/password_screen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import 'package:crockery_app/widgets/buttons/rounded_button.dart';
import '../constant/constant.dart';

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Awesome Credit Card Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Awesome Credit Card Demo'),
//     );
//   }
// }

class OptNumber extends StatefulWidget {
  OptNumber({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _OptNumberState createState() => _OptNumberState();
}

class _OptNumberState extends State<OptNumber> {
  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.cleaning_services),
      //   onPressed: () {
      //     print("Floating button was pressed.");
      //     otpController.clear();
      //     // otpController.set(['2', '3', '5', '5', '7']);
      //     // otpController.setValue('3', 0);
      //     // otpController.setFocus(1);
      //   },
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 250,
                  width: 250,
                  child: Image.asset('images/mobile_img.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Enter Your OTP'),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Color(0xffeeeeee),
                      //     blurRadius: 10,
                      //     offset: Offset(0, 4),
                      //   ),
                      // ],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Constants.kDarkOrangeColor, width: 1.5),
                    ),
                    child: OTPTextField(
                      controller: otpController,
                        length: 6,
                        width: MediaQuery.of(context).size.width,
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldWidth: 30,
                        fieldStyle: FieldStyle.underline,
                        otpFieldStyle: OtpFieldStyle(
                          // backgroundColor: Colors.transparent,
                          focusBorderColor: Constants.kDarkOrangeColor,
                          disabledBorderColor: Constants.kGreyColor,
                          enabledBorderColor: Constants.kDarkOrangeColor,
                          //(here)
                        ),
                        outlineBorderRadius: 15,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                        onChanged: (pin) {
                          print("Changed: " + pin);
                          log( pin.toString().length.toString());
                          if(pin.toString().length == 6){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  LoginScreen()));

                          }
                        },
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                          // log( pin.toString().length.toString());
                          // if(pin.toString().length == 6){
                          //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  LoginScreen()));
                          //
                          // }
                        }),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Resend OTP',
                      style: TextStyle(color: Constants.kDarkOrangeColor),
                    )),
                SizedBox(
                  height: 40,
                ),
                RoundedButton(
                    text: 'Next',
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
