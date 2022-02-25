import 'package:crockery_app/screens/password_screen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import '../buttons/rounded_button.dart';

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
        child: Padding(
          padding: EdgeInsets.all(40),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100,
                  width: 150,
                  child: Image.asset('images/mobile_img.png'),
                ),
                const Align(alignment: Alignment.centerLeft,
                    child: Text('Enter Your OTP')),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                     decoration: BoxDecoration(border: Border.all(color: Color(0xFFAB4D24),width: 1),
                         // borderRadius: BorderRadius.circular(10)
                     ),

                    child: OTPTextField(
                      otpFieldStyle: OtpFieldStyle(
                        enabledBorderColor: Colors.transparent,
                        focusBorderColor:  Colors.transparent,
                        borderColor: Colors.transparent
                      ),

                        controller: otpController,
                        length: 6,
                        width: MediaQuery.of(context).size.width *0.8,
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        // fieldStyle: FieldStyle.box,
                        // outlineBorderRadius: 15,

                        style: TextStyle(fontSize: 17),
                        onChanged: (pin) {
                          print("Changed: " + pin);
                        },
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                        }),
                  ),
                ),
                const SizedBox(height: 15,),
                const Align(alignment: Alignment.centerRight,
                    child: Text('Resend OTP',style: TextStyle(color: Color(0xffAB4D24)),)),
                SizedBox(height: 40,),
                RoundedButton(text: 'Next', onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  PasswordScreen()));
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}